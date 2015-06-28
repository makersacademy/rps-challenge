require 'sinatra/base'
require_relative 'rps'

class RPSWeb < Sinatra::Base
enable :sessions

  run! if app_file == $0
  set :views, proc { File.join(root, '..', 'views') }

  get '/' do
    erb :index
  end

  get '/new_game' do
    session[:name] = params[:name]
    erb :new_game
  end

get '/result' do
  @result = RPS.play params[:choice].to_sym, RPS.random_choice
  if @result == 'Player 1 Wins'
    "#{session[:name]} Wins!"
  elsif @result == 'Player 2 Wins'
    "Computer Wins!"
  else
    "Draw"
  end
end

end