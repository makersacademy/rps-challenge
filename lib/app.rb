require 'sinatra/base'

class RockPaperScissors < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/enter_names' do
    session[:human_player1] = params[:human_player1]
    redirect to('/game')
  end

  get '/game' do
    "Hello World"
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
