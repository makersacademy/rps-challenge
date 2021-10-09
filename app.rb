require 'sinatra/base'
require 'sinatra/reloader'

require './lib/game'

class Rps < Sinatra::Base
  enable :sessions

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/name' do
    session[:player_name] = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    erb :play
  end
  
  post '/play_round' do
    session[:button] = params[:button]
    @game = Game.create(session[:button])
    redirect '/result'
  end

  post '/play_again' do
    session[:button] = params[:button]
    redirect '/play' if session[:button] == "Yes"
    redirect '/' if session[:button] == "No"
  end

  get '/result' do
    erb :result
  end

  run! if app_file == $0
end

