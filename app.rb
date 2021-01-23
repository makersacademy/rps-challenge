require 'sinatra/base'

class Game < Sinatra::Base

  enable :sessions

  get '/' do
    'Yoooo lets get Rock, Paper, Scissors going!'
    erb(:index)
  end

  post '/name' do
    session[:player_name] = params[:name]
    redirect '/register'
  end

  get '/register' do
    @turn = Turn.new(session)
    erb(:register)
  end

  post '/play' do
    session[:player_shape] = params[:shape]
    session[:opponent_shape] = Opponent.new.shape
    redirect '/register'
  end

  run! if app_file == $0

end
