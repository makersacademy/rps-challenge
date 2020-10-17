require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
  enable :sessions
  set :session_secret, 'super secret'

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:Player1] = params[:Player1]
    redirect '/play'
  end

  get '/play' do
    @player1 = session[:Player1]
    erb(:play)
  end

  post '/move' do
    @move = params[:move]
    erb(:move)
  end

  run! if app_file == $0
end
