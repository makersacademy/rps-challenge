require 'sinatra/base'
require './lib/game'

class RockPaperScissors < Sinatra::Base
  enable :sessions
  
  get '/' do
      erb:index
  end

  post '/start_game' do
    $game = Game.new(params[:player_name])
    redirect '/display'
  end

  get '/display' do
    @Player_Name = $game.name
    erb:display
  end
  
  run! if app_file == $0
end 