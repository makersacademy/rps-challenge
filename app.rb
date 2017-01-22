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

  post '/name' do
    first_player = Player.new(params[:player_one_name])
    @player_two_name = params[:player_two_name]
    @player_two_name == "" ? second_player = Player.new : second_player = Player.new(@player_two_name)
    @game = Game.create(first_player, second_player)
    redirect '/play'
  end

  before do
    @game = Game.instance
  end

  get '/play' do
    @player_one_name = @game.first_player.name
    @player_two_name = @game.second_player.name
    @player_one_hp = @game.first_player.hit_points
    @player_two_hp = @game.second_player.hit_points
    erb :play
  end

  post '/player_chosen_outcome' do
    @game.first_player.chosen_outcome = params[:rock] if params[:rock]
    @game.first_player.chosen_outcome = params[:paper] if params[:paper]
    @game.first_player.chosen_outcome = params[:scissors] if params[:scissors]
    @game.second_player.chosen_outcome = @game.second_player.randomizer
    redirect '/result'
  end

  get "/result" do
    @player_one = @game.first_player.chosen_outcome
    @player_two = @game.second_player.chosen_outcome
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
