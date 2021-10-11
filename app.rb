require 'sinatra'
require 'sinatra/reloader' if development?
require './lib/computer'
require './lib/challenger'

class  RPS < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
    enable :sessions
  end

  get '/' do
    erb(:index)
  end

  post '/name' do
    session[:player_name] = params[:player_name]
    redirect './name'
  end

  get '/name' do
    @player_name = session[:player_name]
    erb(:game)
  end

  post '/play_option' do
    session[:play] = params[:play]
    @play = session[:play]
    erb(:play_option)
  end

    run! if app_file == $0
  end
