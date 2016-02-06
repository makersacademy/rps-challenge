require 'sinatra/base'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/player-name' do
    session[:player_name] = params[:player_name]
    @player_name = session[:player_name]
    erb :play_confirmation
  end

  get '/play' do
    @player_name = session[:player_name]
    erb :play_game
  end

  get '/fight' do
    erb :fight
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
