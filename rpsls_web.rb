require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/game'
require_relative './lib/computer'
require 'pry'
require 'pry-byebug'

class RPSLSWeb < Sinatra::Base

  configure do
    enable :sessions
    set :public_folder, File.expand_path('../public', __FILE__)
  end

  helpers do
    def current_player
      Player.find(session[:player_id])
    end

    def opponent
      @game.opponent(session[:player_id])
    end

    def add_player(player)
      id = player.object_id
      Player.add(id, player)
      session[:player_id] = id
    end

    def set_game
      @game_id = params[:game_id].to_i
      @game = Game.games(@game_id)
    end

    def set_second_player
      id = session[:player_id]
      @game.add_second_player(id, current_player)
    end

    def player_registered?
      @game.player_set?(session[:player_id])
    end

    def no_player2?
      @game.player2 == "Pending"
    end

    def check_game
      redirect '/' unless current_player
      redirect '/welcome' unless !!params[:game_id]
      redirect '/multi' unless Game.games(params[:game_id].to_i)
    end

  end

  get '/' do
    redirect '/welcome' if current_player
    erb :name
  end

  post '/names' do
    player = Player.new(params[:name])
    add_player(player)
    redirect '/welcome'
  end

  get '/welcome' do
    redirect '/' unless current_player
    erb :welcome
  end

  post '/single' do
    game_id = Game.start_game(current_player, Computer.new)
    redirect to("/play?game_id=#{game_id}")
  end

  post '/multi' do
    Game.start_game(current_player)
    redirect to("/multi")
  end

  get '/multi' do
    @games = Game.multi_games(session[:player_id])
    erb :multi
  end

  post '/multiplay' do
    set_game
    redirect "/multi" if (player_registered? && no_player2?)
    set_second_player if !player_registered?
    game_id = params[:game_id]
    redirect to("/multiplay?game_id=#{game_id}")
  end

  get '/play' do
    check_game
    set_game
    @game.play if (@game.ready? && !@game.result)
    erb :play
  end

  get '/multiplay' do
    check_game
    set_game
    @game.play if (@game.ready? && !@game.result)
    erb :multiplay
  end

  post '/weapon' do
    set_game
    @game.add_weapon(session[:player_id], params[:weapon])
    redirect to("/play?game_id=#{@game_id}")
  end

  post '/mp_weapon' do
    set_game
    p @game
    @game.add_weapon(session[:player_id], params[:weapon])
    redirect to("/multiplay?game_id=#{@game_id}")
  end

  post '/play_again' do
    set_game
    @game.reset
    redirect to("/play?game_id=#{@game_id}")
  end

  post '/multiplay_again' do
    set_game
    @game.reset
    redirect to("/multiplay?game_id=#{@game_id}")
  end

  post '/logout' do
    session.clear
    redirect '/'
  end

  post '/new_game' do
    set_game
    Game.delete_game(@game_id) if (@game.one_player? || current_player == @game.player1)
    redirect '/welcome'
  end

  run! if __FILE__ == $0

end
