require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
  set    :session_secret, "fix for shotgun"
  enable :sessions

  get '/' do
    erb :index
  end
  
  post '/names' do
    session[:player_1_name] = params[:player_1_name]
    redirect to('/play')
  end
  
  get '/play' do
    erb :play
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
