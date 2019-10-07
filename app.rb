require 'sinatra/base'
require './models/game.rb'
require './models/computer.rb'
require './models/result.rb'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb :register
  end

  get '/game' do
    @player_name = Game.current_game.player_name

    erb :game
  end

  get '/result' do
    @result_message = Game.current_game.result_message
    
    erb :result
  end

  post '/register' do
    Game.create(
      player_name: params[:player_name], 
      computer: Computer, 
      result_class: Result
    )

    redirect('/game')
  end

  post '/play' do
    player_move = params.keys[0]
    Game.current_game.play(player_move)

    redirect('/result')
  end

  run! if app_file == $0
end
