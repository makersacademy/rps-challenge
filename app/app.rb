require 'sinatra/base'
require './lib/player.rb'
require './lib/computer.rb'
require './lib/game.rb'

class RockPaperScissors < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/enter_names' do
    player = Player.new(params[:human_player1])
    computer = Computer.new(params[:computer])
    Game.create(player,computer)
    redirect to('/game')
  end

  get '/game' do
    @game = Game.current_game
    erb(:options)
  end

  post '/rock' do
    @game = Game.current_game
    @game.player.rock; @game.computer.choose
    redirect to('/results')
  end

  post '/scissors' do
    @game = Game.current_game
    @game.player.scissors; @game.computer.choose
    redirect to('/results')
  end

  post '/paper' do
    @game = Game.current_game
    @game.player.paper;   @game.computer.choose
    redirect to('/results')
  end



  get '/results' do
    @game = Game.current_game
    erb(:results)
  end



  # start the server if ruby file executed directly
  run! if app_file == $0
end
