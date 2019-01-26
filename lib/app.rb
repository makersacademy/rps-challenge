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
    session[:player_two_name] = params["player_two_name"]
    redirect '/play'
  end

  get '/play' do
    @player_one_name = session[:player_one_name]
    @player_two_name = session[:player_two_name]
    @player_one_weapon = session[:p1_weapon]
    erb :play
  end

  post '/play' do
    session[:p1_weapon] = params["p1_weapon"]
    redirect '/play'
  end

  get '/player_2' do
    @player_one_name = session[:player_one_name]
    @player_two_name = session[:player_two_name]
    @player_two_weapon = session[:p2_weapon]
    erb :player_2
  end

  post '/player_2' do
    session[:p2_weapon] = params["p2_weapon"]
    redirect '/player_2'
  end

  post '/resolve' do
    Game.resolve(session[:p1_weapon], session[:p2_weapon])
    redirect '/result'
  end

  get '/result' do
    @player_one_name = session[:player_one_name]
    @player_one_weapon = session[:p1_weapon]
    @player_two_name = session[:player_two_name]
    @player_two_weapon = session[:p2_weapon]
    @result = Game.print_result
    erb :result
  end

  post '/reset' do
    Game.reset
    session[:player_one_name], session[:p1_weapon] = nil
    session[:player_two_name], session[:p2_weapon] = nil
    redirect '/'
  end

  run! if app_file == $0

end
