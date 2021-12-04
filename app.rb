require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'

class Rps < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do 
    erb :index
  end

  post '/name' do 
    $player1 = Player.new(params[:player_name])
    @name = $player1.name
    erb :name
  end

  post '/game' do 
    @name = $player1.name
    erb :game
  end

end
