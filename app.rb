require 'sinatra/base'
require './lib/game'

class RockPaperScissors < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/rps' do
    $game = Game.new(params[:player_name])
    @game = $game
    erb :rps
  end

  post '/move_choice' do
    $game.choose(params[:move].to_s)
    redirect '/result'
  end

  get '/result' do
    @game = $game
    erb :result
  end

  run! if app_file == $0
end
