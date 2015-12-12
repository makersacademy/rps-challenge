require 'sinatra/base'
require './lib/player'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/players' do
    $player = Player.new(params[:player_1])
    redirect :play
  end

  get '/play' do
    @player = $player
    erb :play
  end

  post '/rock' do
    $player.rps('rock')
    redirect :choice
  end

  post '/paper' do
    $player.rps('paper')
    redirect :choice
  end

  post '/scissors' do
    $player.rps('scissors')
    redirect :choice
  end

  get '/choice' do
    @player = $player
    erb :choice
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
