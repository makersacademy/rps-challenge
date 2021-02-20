require 'sinatra/base'
# require 'player'
# require 'game'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
      erb :index
  end

  post '/named-player' do
    session[:player_name] = params[:player_name]
    redirect to('/play')
  end

  get '/play' do 
    @player_name = session[:player_name]
    erb :play
  end



  run! if app_file == $0
end