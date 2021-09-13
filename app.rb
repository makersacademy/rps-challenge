require 'sinatra/base'
require 'sinatra/reloader'

class RockPaperScissors < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/names' do
    $player1 = params[:player1]
    $player2 = params[:player2]
    redirect '/game'
  end

  get '/game' do
    @player1 = $player1
    @player2 = $player2
    erb :game
  end

  run! if app_file == $0
end