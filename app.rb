require 'sinatra/base'
require './lib/player'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $player = Player.new(params[:name])
    redirect '/play'
  end

  get '/play' do
    @player = $player
    erb :play
  end

  post '/decision' do
    @player = $player
    @player.decides(params[:decision])
    redirect '/confirmation'
  end

  get '/confirmation' do
    @player = $player
    erb :confirmation
  end

  post '/computer' do
    $computer = Player.new('Computer')
    @computer = $computer
    erb :computer
  end


run! if app_file == $0
end
