require 'sinatra/base'
require './lib/player'
require './lib/game'
class RPS < Sinatra::Base
  set :session_secret, 'super secret'

  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/name' do
    # @player_2 = Player.new(params[:player_2_name])
    @game = Game.create(params[:player_name])
    redirect '/start_game'
  end

  get '/start_game' do
    @player_name = @game.player.name
    erb :start_game
  end

  post '/choice' do
    @game.choice(params[:choice])
    redirect '/result'
  end

  get '/result' do
    @computer_choice = @game.random_choice
    @player_choice = @game.player_choice
    @game_match = @game.match(@player_choice, @computer_choice)
    erb :result
  end

  run! if app_file == $0
end
