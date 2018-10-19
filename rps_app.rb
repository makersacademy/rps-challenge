require 'sinatra/base'

class Game < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    session[:player_name] = params[:player_name]
    # session[:player_two_name] = params[:player_two_name]
    redirect '/play'
  end

  get '/play' do
    @player_name = session[:player_name]
    # @player_two_name = session[:player_two_name]
    erb :play
  end

  run! if app_file == $0
end
