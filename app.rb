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

  post '/rock' do
    rpssl = Game.new("Rock")
    redirect '/result'
  end

  post '/scissors' do
    rpssl = Game.new("Scissors")
    redirect '/result'
  end

  post '/paper' do
    rpssl = Game.new("Paper")
    redirect '/result'
  end

  post '/spock' do
    rpssl = Game.new("Spock")
    redirect '/result'
  end

  post '/lizard' do
    rpssl = Game.new("Lizard")
    redirect '/result'
  end

  get '/result' do
    erb(:result)
  end

  run! if app_file == $0
end
