require 'sinatra'
require 'sinatra/reloader' if development?

class Rpssl < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get '/' do
    erb(:index)
  end

  get '/multiplayer' do
    erb(:multiplayer)
  end

  get '/singleplayer' do
    erb(:singleplayer)
  end

  post '/singleplayer_name' do
    session[:Player1] = params[:Player1]
    redirect '/singleplayer_move'
  end

  get '/singleplayer_move' do
    @player_name = session[:Player1]
    erb(:singleplayer_move)
  end

  run! if app_file == $0
end
