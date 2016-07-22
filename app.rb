require 'sinatra/base'
require './lib/game.rb'

class RPS < Sinatra::Base
  enable :sessions
  set :session_secret, 'super_secret'

  get '/' do
    erb :index
  end

  post '/names' do
    $game = Game.new(params[:player_one])
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb(:play)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
