require 'sinatra/base'
require './lib/player'

class RPS < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/details' do
    $player = Player.new(params[:player_name])
    redirect '/play'
  end

  get '/play' do
    @player = $player
    erb :play
  end

  post '/choice' do
    @player = $player
    @player.choice(params[:option])
    redirect '/outcome'
  end

  get '/outcome' do
    @player = $player
    erb :outcome
  end

  run! if app_file == $0

end
