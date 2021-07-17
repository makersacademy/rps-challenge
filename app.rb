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
    erb(:play)
  end

  post '/outcome' do
  end







end