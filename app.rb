require 'sinatra/base'
# require './lib/computer'
# require './lib/game'
# require './lib/player'

class Rps < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do

    session[:player_name] = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    @player = session[:player_name]
    erb :play
  end

  post '/choice' do

  end

run! if app_file == $0

end
