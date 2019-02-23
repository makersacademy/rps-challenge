require 'sinatra/base'
require './models/game.rb'
require './models/computer.rb'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb :register
  end

  get '/game' do
    player_name = Game.current_game.player_name

    if  Game.current_game.result == :player_draw
      @game_message = "A draw? I THINK NOT! WE WILL BATTLE TILL TIME DOTH END!"
    else
      @game_message = "PREPARE TO BE DESTROYED, #{player_name}!"
    end

    erb :game
  end

  get '/result' do
    if Game.current_game.result == :player_win
      @result_message = 'Truly, you are the champion.'
    elsif Game.current_game.result == :player_loss
      @result_message = 'SUCK IT, LOSER!'
    else
      redirect('/game')
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
