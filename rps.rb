require 'sinatra/base'
require 'shotgun'
require './lib/game.rb'
require './lib/player.rb'

class Rps < Sinatra::Base
  enable :sessions
  set :session_secret, 'super secret'

  get '/' do
    erb :index
  end

  post '/' do
    @one_player_game = params[:one_player_game]
    @two_player_game = params[:two_player_game]
    session[:number_players] = 1 if !!@one_player_game
    session[:number_players] = 2 if !!@two_player_game
    erb :index
  end

  post '/name' do
    @number_players = session[:number_players]
    first_player = Player.new(params[:player_one_name])
    @player_two_name = params[:player_two_name]
    @number_players == 1 ? second_player = Player.new : second_player = Player.new(@player_two_name)
    @game = Game.create(first_player, second_player, session[:number_players])
    redirect '/play'
  end

  before do
    @game = Game.instance
  end

  get '/play' do
    @number_players = @game.number_players
    @player_one_name = @game.first_player.name
    @player_two_name = @game.second_player.name
    @player_one_hp = @game.first_player.hit_points
    @player_two_hp = @game.second_player.hit_points
    if @number_players == 2
      @game.get_player_to_play
      @player_name = @game.player_turn.name
    else @number_players == 1
      @game.second_player.runs_random_choice
    end
    erb :play
  end

  post '/game_with_one_player' do
    @game.first_player.player_choice(params[:rock]) if !!params[:rock]
    @game.first_player.player_choice(params[:paper]) if !!params[:paper]
    @game.first_player.player_choice(params[:scissors]) if !!params[:scissors]
    @game.first_player.player_choice(params[:spock]) if !!params[:spock]
    @game.first_player.player_choice(params[:lizzard]) if !!params[:lizzard]
    redirect '/result'
  end

  post '/game_with_two_players' do
    @game.player_turn.player_choice(params[:rock]) if !!params[:rock]
    @game.player_turn.player_choice(params[:paper]) if !!params[:paper]
    @game.player_turn.player_choice(params[:scissors]) if !!params[:scissors]
    @game.player_turn.player_choice(params[:spock]) if !!params[:spock]
    @game.player_turn.player_choice(params[:lizzard]) if !!params[:lizzard]
    redirect '/play' if @game.player_turn == @game.first_player
    redirect '/result' if @game.player_turn == @game.second_player
  end

  get "/result" do
    @player_one_outcome = @game.first_player.chosen_outcome
    @player_two_outcome = @game.second_player.chosen_outcome
    @winner = @game.checks_winner.name if !!@game.checks_winner
    @game.reduce_hp_from_looser if !!@game.checks_winner
    @game_status = @game.status
    erb :result
  end

  post "/new_game" do
    first_player = @game.first_player
    second_player = @game.second_player
    @game = Game.new(first_player, second_player)
    redirect '/play'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
