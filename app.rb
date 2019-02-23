require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb :register
  end

  get '/game' do
    @player_name = session[:player_name]

    erb :game
  end

  post '/register' do
    session[:player_name] = params[:player_name]

    redirect('/game')
  end

  run! if app_file == $0
end
