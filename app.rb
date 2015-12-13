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
    $opponent = Player.new('Computer')
    @opponent = $opponent
    @opponent.decides(@opponent.random_decides)
    redirect '/computer'
  end

  get '/computer' do
    @opponent = $opponent
    erb :computer
  end


run! if app_file == $0
end
