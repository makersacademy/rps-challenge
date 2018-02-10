require 'sinatra/base'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/game' do
    session[:player_name] = params[:player_name]
    redirect '/game'
  end

  get '/game' do
    erb :game
  end

  # start the server is file executed directly
  run! if app_file == $0

end
