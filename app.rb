require 'sinatra/base'
require './lib/player'
require './lib/computer'

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
    @player = $player
    erb :play
  end

  get '/choose' do
    @player = $player
    erb :choose
  end

  post '/weapon' do
    $player.choice(params[:player_choice])
    redirect '/show-choice'
  end

  get '/show-choice' do
    @player = $player
    erb :choice
  end

  post '/computer' do
    @player = $player
    $computer = Computer.new
    redirect '/final'
  end

  get '/final' do
    @player = $player
    @computer = $computer
    erb :final
  end

  run! if app_file == $0
end
