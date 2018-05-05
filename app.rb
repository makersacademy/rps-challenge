require 'sinatra/base'
require './lib/player'
require './lib/game'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $game = Game.new(Player.new(params[:player]))
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end

  run! if app_file == $0

end
