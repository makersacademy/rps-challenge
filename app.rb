require 'sinatra/base'
require './lib/game.rb'
require './lib/player.rb'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    player = Player.new(params[:player_name])
    Game.start(Game.new(player))
    redirect 'play'
  end

  before do
    @game = Game.current_game
  end

  get '/play' do
    erb :play
  end

  post '/choice' do
    @game.player_choice = params[:player_choice]
    @game.end_game
    redirect '/result'
  end

  get '/result' do
    @player_choice = $player_choice
    erb :result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
