require 'sinatra/base'
require_relative './lib/game'
require_relative './lib/player'

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
    @player2 = Player.new(params[:p2_name])
    @game = Game.create(@player1, @player2)
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

  post '/p2_choice' do
    @game.p2.select_move(params[:p2_choice])
    redirect '/result'
  end

  get '/result' do
    @game.find_winner
    @msg_generator = MessageGenerator.new(@game.winner, @game.loser).message
    erb(:result)
  end

  post '/play_again' do
    params[:game_choice] == "Play Again" ? (redirect '/play') : (redirect '/')
  end

end
