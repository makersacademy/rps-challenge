require 'sinatra/base'
require './models/game.rb'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb :register
  end

  get '/game' do
    @player_name = Game.current_game.player_name

    erb :game
  end

  post '/register' do
    Game.create(player_name: params[:player_name])

    redirect('/game')
  end

  run! if app_file == $0
end
