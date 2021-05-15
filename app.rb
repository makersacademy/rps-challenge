# frozen_string_literal: true

require 'sinatra/base'
require 'sinatra/reloader'
require 'rack'

# RPS class is responsible for Controller actions to run the webapp game functionality
class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:player_name] = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    @player_name = session[:player_name]
    erb :play
  end

  post '/weapon_selection' do
    session[:player_weapon] = params[:weapon]
    redirect '/result'
  end

  get '/result' do
    @player_weapon = session[:player_weapon]
    erb :result
  end

end
