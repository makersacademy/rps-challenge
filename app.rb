require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/game'

class RockGame < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/name' do
    Game.start_game(Player.new(params[:player_name]))
    redirect to('/play')
  end

  get '/play' do
    erb :play
  end

  post '/choice' do
    @choice = params[:player_choice]
    erb :choice
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
