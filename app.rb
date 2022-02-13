require 'sinatra/base'
require 'sinatra/reloader'
require './lib/game'
require './lib/player'

class RPS < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    player1 = Player.new(params[:player1_name])
    $game = Game.new(player1)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end


  run! if app_file == $0
end