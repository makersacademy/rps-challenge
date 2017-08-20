require 'sinatra/base'
require './lib/player'
require './lib/computer'
require './lib/battle'

class RPSWeb < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/game' do
    @player = Player.new(params[:player_name])
    erb :game
  end

  post '/result' do
    @computer = Computer.new
    @battle = Battle.new(params :choice, @computer.choice)
    erb :result
  end
end
