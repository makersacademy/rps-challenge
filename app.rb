require 'sinatra/base'
require './lib/gamesession'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:enter_name)
  end

  post '/name_fetch' do
    session[:name] = params[:name]
    redirect '/game_tracker'
  end

  get '/game_tracker' do
    @name = session[:name]
    erb(:game_tracker)
  end
end
