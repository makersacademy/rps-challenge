require 'sinatra/base'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb :enter
  end

  post '/name' do
    session[:player_name] = params[:player_name]
    @player_name = session[:player_name]
    erb :initiate
  end

  post '/play' do
    erb :play
  end

  post '/result' do
    @weapon = params[:weapon]
    @player_name = session[:player_name]
    erb :result
  end

end
