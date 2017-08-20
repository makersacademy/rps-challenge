require 'sinatra/base'
require './lib/player'

class RPSWeb < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/game' do
    @player = Player.new(params[:player_name])
    erb :game
  end
end
