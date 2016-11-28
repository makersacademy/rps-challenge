require 'sinatra/base'
require './lib/player.rb'
require './lib/computer.rb'
require './lib/game.rb'
require './lib/calculations.rb'

class RockPaperScissors < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/enter_names' do
    player = Player.new(params[:human_player1])
    computer = Computer.new
    Game.create(player,computer)
    redirect to('/game')
  end

  get '/game' do
    @game = Game.current_game
    erb(:options)
  end

  post '/choices' do
    @game = Game.current_game
    calculations = Calculations.new(params[:choices].to_sym, @game.computer.choose)
    @game.calculations = calculations
    redirect to('/results')
  end



  get '/results' do
    @game = Game.current_game
    erb(@game.calculations.calculate)
  end



  # start the server if ruby file executed directly
  run! if app_file == $0
end
