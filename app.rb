require 'sinatra/base'
require './lib/player'
require './lib/computer'
require './lib/result'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/play' do
    $player = Player.new(params[:player])
    redirect '/play'
  end

  get '/play' do
    @player = $player
    erb :play
  end

  post '/result' do
    @player = $player
    @player.choice = params[:choice]
    redirect '/result'
  end

  get '/result' do
    @player = $player
    $computer = Computer.new.random_choice
    @computer = $computer
    $result = Result.new(@player, @computer) 
    erb :result
  end

  run! if app_file == $0
end
