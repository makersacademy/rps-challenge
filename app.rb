require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'
require './lib/game'

class MyApp < Sinatra::Base
  enable :sessions 

  configure :development do
    register Sinatra::Reloader
    also_reload 'lib/index.erb'
    also_reload 'lib/play.erb'
    also_reload 'lib/player.rb'
    also_reload 'lib/game.rb'
  end

  # index page where players submit their names
  get '/' do 
    erb(:index)
  end

  post '/names' do
    $player_1 = Player.new(params[:name1])
    $player_2 = Player.new(params[:name2])
    redirect '/play'
  end
  
  get '/play' do
    $game = Game.new($player_1.name, $player_2.name)
    @name1 = $game.player1
    @name2 = $game.player2
    erb(:play)
  end 

  post '/moves' do
    params[:first_move]
    $game.move1 = params[:first_move]
    redirect '/play_two'
  end 

  get '/play_two' do 
    @name1 = $game.player1
    @name2 = $game.player2
    erb(:play_two)
  end 

  post '/moves2' do 
    params[:second_move]
    $game.move2 = params[:second_move]
    redirect '/outcome'
  end 

  get '/outcome' do 
    @move1 = $game.move1
    @move2 = $game.move2
    @name1 = $game.player1
    @name2 = $game.player2
    @outcome = $game.result(@move1, @move2)
    erb(:outcome)
  end 
  
  # # Start the server if this file is executed directly (do not change the line below)
  run! if app_file == $0
end
