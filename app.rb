require 'sinatra/base'

class Rpsls < Sinatra::Base
  enable :sessions

  get '/' do
    erb :welcome
  end

  post '/input_name' do
    session[:username] = params[:username]
    redirect '/game'
  end

  get '/game' do
    @player_name = session[:username]
    erb :game
  end



  # start the server if ruby file executed directly
  run! if app_file == $0
end
