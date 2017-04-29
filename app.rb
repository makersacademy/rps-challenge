require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
  enable :sessions
  set :session_secret, 'super-secret'

  get '/' do
    erb :index
  end

  post '/save-name' do
    session[:user_1] = params[:name]
    redirect '/play'
  end

  get '/play' do
    @player = session[:user_1]
    erb :play
  end


  run! if app_file == $0
end
