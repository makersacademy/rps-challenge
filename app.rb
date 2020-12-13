require 'sinatra/base'
require './lib/rps'
require './lib/player'

class RPS_web < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/name' do
    player1 = Player.new(params[:player1_name])
    $rps = RPS.new(params[:player_1_name])
    redirect '/play'
  end

  get '/play' do
    @rps = $rps
    erb :play
  end

  get '/result' do
    
  end

end

#Write feature tests
#Need to make content for play.erb
#Create logic for app.erb /play to receive param as weapon for player
#Possibly add a player2?
#Authentication?
#Rails?