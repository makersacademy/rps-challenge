require 'sinatra/base'

class Rps < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/play' do
    session[:player_name] = params[:player_name]
    @player_name = session[:player_name]
    erb :play
  end

  post '/result' do
    @player_move = params[:move_choice]
    erb :result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
