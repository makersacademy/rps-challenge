require 'sinatra/base'
# require './lib/game'
# require './lib/player'
# require './lib/computer'

class Rps < Sinatra::Base


  get '/' do
    erb :index
  end
  post '/game' do
    @name = params[:name]
    erb :game
  end
  post '/results' do
    @player_choice = params[:player_choice]
    erb :results
    # redirect '/results'
  end
  # get '/results' do
  #   erb :results
  # end


  run! if app_file == $0
end
