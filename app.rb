require 'sinatra/base'
require './lib/player.rb'

class Game < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/game_start' do
    $player = params[:player_name]
    redirect '/game'
    #@player
  end

  get '/game' do
    erb :game
  end

  post '/rock_attack' do
    erb :rock_attack
  end

  post '/paper_attack' do
    erb :paper_attack
  end

  post '/scissors_attack' do
    erb :scissors_attack
  end

  run! if app_file == $0
  #this starts the server if the ruby file is run directly
end
