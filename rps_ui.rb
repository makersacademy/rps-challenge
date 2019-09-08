# frozen_string_literal: true

require 'sinatra/base'
require 'erb'
require_relative './lib/repository'
require_relative './lib/player'
require_relative './lib/game'
require_relative './context'

class RpsUi < Sinatra::Base
  enable :sessions

  GAME_KEY        = 'game_name'
  PLAYER_ID_KEY   = 'player_id'
  PLAYER_NAME_KEY = 'name'
  WINNER_NAME_KEY = 'winner'
  AI_KEY          = 'ai'

  COMPUTER_NAME   = 'Computer'

  before do
    @context = AppContext.instance
    @repository = @context.repository
  end

  get '/' do
    erb :index
  end

  post '/register' do
    name = params[PLAYER_NAME_KEY]
    redirect '/' if name.nil? || name.empty?

    player = Player.new(name, self, @context.id_generator)
    @repository.add_player(player)
    session[PLAYER_ID_KEY] = player.id
    redirect '/lobby'
  end

  get '/lobby' do
    redirect '/' if session_player_id.nil?

    @games = @repository.all_games
    @player_names = @repository.all_players.map(&:name).join(', ')
    erb :lobby
  end

  post '/join' do
    game_name = params[GAME_KEY]
    redirect '/game-not-found' unless @repository.game(game_name)

    game = @repository.game(game_name)
    add_current_player(game) unless player_already_in_game?(game)

    session[GAME_KEY] = game.name
    redirect_if_ready(game)
  end

  get '/game-not-found' do
    back_to_lobby_if_nil_game

    erb :game_not_found
  end

  post '/new' do
    game_name = params[GAME_KEY]
    redirect '/game-already-exists' if @repository.game(game_name)
    back_to_lobby if game_name.nil? || game_name.empty?

    game = Game.new(game_name, @context.rules)
    add_current_player(game)
    unless params[AI_KEY].nil?
      add_ai_player(game)
    end

    @repository.add_game(game)
    session[GAME_KEY] = game.name

    redirect_if_ready(game)
  end

  get '/game-already-exists' do
    back_to_lobby_if_nil_game

    erb :game_already_exists
  end

  get '/waiting-for-opponent' do
    back_to_lobby_if_nil_game

    erb :waiting_for_opponent
  end

  post '/play-if-ready' do
    redirect_if_ready(game)
  end

  get '/play' do
    back_to_lobby_if_nil_game

    erb :play
  end

  post '/attack' do
    @repository.add_move(session_player_id, params['move'])
    game.play
    redirect '/game-over'
  end

  get '/game-over' do
    back_to_lobby_if_nil_game

    p1 = game.player1
    p2 = game.player2

    is_winner = proc { |p| p.equal?(game.winner) }
    winner = [p1, p2].select(&is_winner).first
    loser = [p1, p2].reject(&is_winner).first

    @player1_moves = "#{p1.name} chose #{p1.chosen_move}"
    @player2_moves = "#{p2.name} chose #{p2.chosen_move}"

    @winning_move = game.winner ? "#{winner.chosen_move} beats #{loser.chosen_move}" : nil
    @winner_text = game.winner ? "#{game.winner.name} Wins!" : "It's a draw!"

    erb :game_over
  end

  post '/return-to-lobby' do
    end_game
    session.delete(GAME_KEY)
    back_to_lobby
  end

  def choose_move(player_id, _)
    @repository.move(player_id)&.to_sym
  end

  private

  def player_already_in_game?(game)
    game.player1 == current_player || game.player2 == current_player
  end

  def current_player
    @repository.player(session_player_id)
  end

  def add_current_player(game)
    game.add_player(current_player)
  end

  def add_ai_player(game)
    ai_player = Player.new(COMPUTER_NAME, @context.ai_instance, @context.id_generator)
    game.add_player(ai_player)
  end

  def back_to_lobby_if_nil_game
    back_to_lobby if game.nil?
  end

  def back_to_lobby
    redirect '/lobby'
  end

  def end_game
    @repository.delete_game(game) if game
    @repository.delete_move(session_player_id) if session_player_id
  end

  def session_player_id
    session[PLAYER_ID_KEY]
  end

  def game
    @repository.game(session[GAME_KEY])
  end

  def redirect_if_ready(game)
    redirect game.ready? ? '/play' : '/waiting-for-opponent'
  end
end

class Game
  def to_table_row
    template = %(
        <tr>
        <td><%= name %></td>
        <td><%= !ready? %></td>
        </tr>
    )
    ERB.new(template).result(binding)
  end
end