require 'sinatra'
require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'

class Rps < Sinatra::Base
  enable :sessions

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/name_entered' do
    session[:player] = Player.new(params[:player_name])
    redirect '/pre'
  end

  get '/pre' do
    @player_name = session[:player].name
    erb :pre
  end

  get '/play' do
    @player = session[:player]
    erb :play
  end

  post '/choice' do
    session[:player].choose_play(params[:choice])
    redirect '/play'
  end

  get '/result' do
    erb :result
  end

  run! if app_file == $0
end
