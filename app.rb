require 'sinatra/base'
require './lib/player'

class RPS < Sinatra::Base
  
  get '/' do
    erb(:index)
  end

  post '/names' do
    $player = Player.new(params[:name])
    redirect '/play'
  end

  get '/play' do
    @player = $player
    erb(:play)
  end

  run! if app_file == $0
end