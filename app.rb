require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'
require './lib/game'
require './lib/computer'

class RockPaperScissors < Sinatra::Base
  configure :development do 
    register Sinatra::Reloader
  end 

  enable :sessions

  get "/" do 
    erb :index
  end 

  post "/names" do 
    player = Player.new(params[:player_1_name])
    $game = Game.new(player)
    redirect to('/play')
  end

  get "/play" do 
    @game = $game
    erb :play
  end 

  post "/rock" do 
    @game = $game 
    @game.turn("rock")
    redirect to('/play')
  end 

  post "/paper" do 
    @game = $game 
    @game.turn("paper")
    redirect to('/play')
  end 

  post "/scissors" do 
    @game = $game 
    @game.turn("scissors")
    redirect to('/play')
  end 

  run! if app_file == $0

end
