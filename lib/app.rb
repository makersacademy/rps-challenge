require 'sinatra/base'
require 'sinatra'
require_relative 'game'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:player_one_name] = params["player_one_name"]
    redirect '/play'
  end

  get '/play' do
    @player_one_name = session[:player_one_name]
    @player_one_weapon = session[:weapon]
    session[:player_two_weapon] = Game.choose_weapon
    @player_two_weapon = session[:player_two_weapon]
    erb :play
  end

  post '/play' do
    session[:weapon] = params["weapon"]
    redirect '/play'
  end

  post '/resolve' do
    session[:result] = Game.resolve()
  end

  run! if app_file == $0

end
