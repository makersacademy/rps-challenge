require 'sinatra/base'
require './lib/game.rb'
require './lib/player.rb'


class Rps < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/play' do
    p params
    @name = params[:name]
    erb :play
  end

  get '/play' do
    erb :play
  end

  post '/results' do
    p params
    @player_choice = params[:player_choice]
    # redirect '/results'
    erb :results
  end

  get '/results' do
    erb :results
  end



  run! if app_file == $0
end
