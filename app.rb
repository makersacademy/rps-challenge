require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
  enable :sessions
  set :session_secret, "enabled"
  get '/' do
    erb :index
  end

  post '/name' do
    session[:name] = params[:player]
    redirect '/play'
  end

  get '/play' do
    @player = session[:name]
    erb :play
  end
  
  run! if app_file == $0
end
