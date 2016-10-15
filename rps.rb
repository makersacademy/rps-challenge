require 'sinatra/base'
require './lib/player'
require './lib/game'
require './lib/computer'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $game = Game.new(params[:Player1])
    redirect '/start-game'
  end

  get '/start-game' do
    @game = $game
    erb :start_game
  end



  run! if app_file == $0
end
