require 'sinatra/base'
require './models/game.rb'
require './models/computer.rb'

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
    if session[:game_result]
      @result_message = 'Truly, you are the champion.'
    else 
      @result_message = 'SUCK IT, LOSER!'
    end
    
    erb :result
  end

  post '/register' do
    Game.create(player_name: params[:player_name], computer: Computer)

    redirect('/game')
  end

  post '/play' do
    player_move = params.keys[0]
    session[:game_result] = Game.current_game.player_move_wins?(player_move)

    redirect('/result')
  end

  run! if app_file == $0
end
