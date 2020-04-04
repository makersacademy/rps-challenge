require 'sinatra/base'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    "Welcome to Rock Paper Scissors!"
    erb :index
  end

  post '/enter_name' do
    session[:player_name] = params[:enter_name]
    redirect './start_game'
  end

  get '/start_game' do
    @player_name = session[:player_name]
    erb :start_game
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
