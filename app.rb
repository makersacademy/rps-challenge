require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player.rb'
require './lib/game.rb'
require './lib/computer.rb'

class RockPaperScissors < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get "/" do
    erb :index
  end

  get '/single' do
    erb :single
  end
  
  post "/names" do
    player_1 = Player.new(params[:name])
    player_2 = Computer.new
    $game = Game.new(player_1, player_2)
    redirect "/play"
  end
  
  get "/play" do
    @game = $game
    erb :game
  end
  
  post "/weapon" do
    @game = $game
    @game.player_1.weapon = params[:weapon]
    redirect '/result'
  end
  
  get "/result" do
    @game = $game
    erb @game.result
  end

  run! if app_file == $0
end