require 'sinatra/base'
require './lib/player'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    $player_1 = Player.new(params[:player_name])
    redirect '/play'
  end

  get '/play' do
    @player_name = $player_1.name
    erb :play
  end

  get '/choose' do
    @player_name = $player_1.name
    erb :choose
  end

  post '/chosen' do
    @player_name = $player_1.name
    $player_1.weapons(params[:weapon])
    redirect '/chosen'
  end

  get '/chosen' do
    @player_name = $player_1.name
    erb :chosen
  end

  run! if app_file == $0

end
