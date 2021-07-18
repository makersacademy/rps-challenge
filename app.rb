require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'


class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/play' do
    @player_name = params[:player_name]
    session[:player_name] = params[:player_name]
    erb(:play)
  end

  post '/outcome' do
    @player_name = session[:player_name]
    @player_choice = params[:rock]
    erb(:outcome)
  end







end