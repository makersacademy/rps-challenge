require 'sinatra/base'
require './lib/player'


class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $player = Player.new(params[:player_name])
    redirect '/play'
  end

  get '/play' do
    @player_name = $player.name
    erb :play
  end

  get '/choose' do
    @player_name = $player.name
    erb :choose
  end

  post '/weapon' do
    $player.choice(@choice) == $player.choice(params[:choice])
    if $player.choice("rock")
      redirect '/rock'
    end
  end

  get '/rock' do
    @player_name = $player.name
    erb :rock
  end

  run! if app_file == $0
end
