require 'sinatra/base'
require './lib/player'

class RockPaperScissors < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/name' do
    $player = Player.new(params[:name])
    redirect to '/game'
  end

  get '/game' do
    @player = $player
    erb :game
  end


end
