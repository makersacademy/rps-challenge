require 'sinatra/base'
require './lib/middle'
require './lib/computer'
require './lib/player'

class RockPaperScissors < Sinatra::Base
  
  enable :sessions

  before do
    @game = Middle.game_instance
  end

  get '/' do
    erb :index
  end
  
  post '/name' do
    @game = Middle.create_game(Player.new(params[:name]), Computer.new)
    redirect '/game'
  end

  get '/game' do
    @name = @game.players.first.name
    @computer = @game.players.last.name
    erb :game
  end

  post '/play' do
    @rock = params[:rock]
    @paper = params[:paper]
    @scissors = params[:scissors]
    @move = @rock || @paper || @scissors
    @game.make_move(@game.player1, @move)
    @game.computer_move
    redirect '/result'
  end

  get '/result' do
    @game.calculate_winner
    @winner = @game.winner
    @loser = @game.loser
    erb :result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
