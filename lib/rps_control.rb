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
    session[:name] = params[:name]
    erb :new_game
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

end