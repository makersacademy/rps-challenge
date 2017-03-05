require 'sinatra'
require './lib/game'

class RpsApp < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    p params
    $game = Game.new(Player.new(params[:player]))
    redirect '/play'
  end

  get '/play' do
    @player = $game.player
    erb(:play)
  end

  run! if app_file == $0

end
