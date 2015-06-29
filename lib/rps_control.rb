require 'sinatra/base'
require_relative 'rps'

class RPSWeb < Sinatra::Base
enable :sessions

  run! if app_file == $0
  set :views, proc { File.join(root, '..', 'views') }

  get '/' do
    erb :index
  end

  post '/new_game' do
    if (session[:name] == nil && params[:name] == '')
      session[:name] = "Player"
    elsif session[:name] == nil
      session[:name] = params[:name]
    end

    if params[:gametype] == "vs Computer"
      redirect '/computer_rps'
    else
      redirect '/vs_rps'
    end
  end

  get '/computer_rps' do
    erb :computer_rps
  end


  post '/result' do
    winner = RPS.play params[:choice].to_sym, RPS.random_choice
    if winner == 'Player 1 Wins'
      @result = "#{session[:name]} Wins!"
    elsif winner == 'Player 2 Wins'
      @result = "Computer Wins!"
    else
      @result = "Draw!"
    end
    erb :result
  end

  get '/vs_rps' do
    unless $gamestart == "started"
      $gamestart = "started"
      session[:id] = "Player 1"
    else
      session[:id] = "Player 2"
    end
    erb :vs_rps
  end

  post '/vs_result' do
    if session[:id] == "Player 1"
      $p1choice = params[:choice].to_sym
    else
      $p2choice = params[:choice].to_sym
    end
    erb :please_wait
  end

  post '/vs_winner' do
    winner = RPS.play $p1choice, $p2choice
    if winner == 'Player 1 Wins!'
      @result = "Player 1 Wins!"
      @congrats = 'Player 1'
    elsif winner == 'Player 2 Wins'
      @result = "Player 2 Wins!"
      @congrats = 'Player 2'
    else
      @result = 'Draw!'
    end
    $gamestart = "stopped"
    erb :result
  end

end