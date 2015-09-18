require 'sinatra/base'

class RockPaperScissors < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/' do
    session[:name] = params[:player_name]
    redirect '/play_rps'
  end

  get '/play_rps' do
    @name = session[:name]
    erb :play_rps
  end

  # start the server if ruby file executed directly
  run! if app_file == $PROGRAM_NAME

end
