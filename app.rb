require 'sinatra/base'
require_relative './lib/game'
require_relative './lib/player'
require_relative './lib/computer_player'

class RockPaperScissors < Sinatra::Base
  run! if app_file == $0

  before do
    @game = Game.instance
  end

  get '/' do
    erb(:index)
  end

  post '/name' do
    @player1 = Player.new(params[:p1_name])
    if params[:p2_name] == ""
      @player2 = Computer.new
      players = 1
    else
      @player2 = Player.new(params[:p2_name])
      players = 2
    end
    @game = Game.create(@player1, @player2)
    @game.number_of_players(players)
    redirect '/play'
  end

  get '/play' do
    @player1 = @game.p1
    @player2 = @game.p2
    erb(:play)
  end

  post '/move' do
    @player1 = @game.p1
    @player1.select_move(params[:p1_move])
    @game.players == 1 ? (redirect '/result') : (redirect '/p2_move')
  end

  get '/p2_move' do
    @player1 = @game.p1
    @player2 = @game.p2
    erb(:play2)
  end

  post '/p2_move' do
    @player2 = @game.p2
    @player2.select_move(params[:p2_move])
    redirect '/result'
  end

  get '/result' do
    @winner = @game.find_winner
    if @winner != "draw"
      @msg_generator = MessageGenerator.new(@winner).message
    else
      @msg_generator = MessageGenerator.new("draw").message
    end
    erb(:result)
  end

  post '/play_again' do
    params[:game_choice] == "Play Again" ? (redirect '/play') : (redirect '/')
  end

end
