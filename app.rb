require 'sinatra/base'
require './lib/computer'
require './lib/player'
require './lib/game'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:player_1_name] = params[:player_1_name]
    erb(:play)
  end

  post '/game' do
    session[:player1] = Player.new(session[:player_1_name])
    session[:player2] = Computer.new
    session[:game] = Game.new(session[:player1], session[:player2])
    session[:player1_choice] = session[:player1].choose(params[:choice].to_sym)
    session[:player2].computer_choice
    session[:player2_choice] = session[:player2].weapon
    if session[:game].draw?
        @result = "It's a Draw!"
    elsif session[:game].win?
      @result = session[:player1].name
    else
      @result = session[:player2].name
    end

    erb(:game)
  end


run! if app_file == $0

end
