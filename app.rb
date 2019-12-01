require 'sinatra/base'
require './lib/player'
require './lib/move'

class Battle < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/name' do
    $player = Player.new(params[:player])
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

  post '/result' do
    $move = Move.new(params[:move])
    erb(:results)
  end

  run! if app_file == $0
end
