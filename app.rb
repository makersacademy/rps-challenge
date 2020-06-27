require 'sinatra/base'
require './lib/game.rb'

class RockPaperScissors < Sinatra::Base
  enable :sessions
  get '/' do
    erb:index
  end

  post '/rock' do
    $game.go('rock')
    redirect '/result'
  end

  post '/paper' do
    $game.go('paper')
    redirect '/result'
  end

  post '/scissors' do
    $game.go('scissors')
    redirect '/result'
  end

  post '/start_game' do
    $game = Game.new(params[:player_name])
    redirect '/display'
  end

  get '/result' do
    @result = $game.result
    erb:result
  end

  get '/display' do
    @Player_Name = $game.name
    erb:display
  end

  run! if app_file == $0
end 
