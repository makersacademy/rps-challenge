require './lib/player'
require 'sinatra'
require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
  get '/' do
    erb(:index)
  end

  post '/weapons' do 
    @player = Player.new(params[:player1])
    Game.create(player)    
    erb(:weapons)
  end 

  post '/game_over' do 
    weapon = params[:weapon]
    Game.choose_weapon(Game.instance.player1, weapon)
    Game.choose_weapon(Game.instance.player2)
    erb(:game_over)
  end 

  # start the server if ruby file executed directly
  run! if app_file == $0
end
