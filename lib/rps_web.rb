require 'sinatra/base'
require_relative 'game'
require_relative 'computer'
require_relative 'player'

class RpsWeb < Sinatra::Base
  set :views, proc { File.join(root, '..', 'views') }

  get '/' do
    erb :index
  end

  get '/form' do
    erb :make_move
  end

  post '/form' do
      erb :make_move
    end

# choose if u want to play comp or p2. if comp go to comp result. if p2, go to p2 select page then p2 result.

  get '/result' do
    @name = params[:name]
    @move = params[:move]
    player = Player.new
    player.make_move(@move)
    game = Game.new
    @result = game.result(player)
    erb :result
  end


#welcome page, whats your name
#hi name, whats your move? ( save name in sessions for rest of the game)
#this is the computers move, 'you win!'
end
