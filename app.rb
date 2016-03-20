require 'sinatra/base'
require './lib/player'
require './lib/game'
require './lib/round'
require './lib/computer'



class RPS < Sinatra::Base

  get '/' do
    erb(:player_form)
  end

  post '/names' do
    Game.start(params[:player1])
    redirect('/duel')
  end

  get '/duel' do
    @game = Game.current_game
    @player1 = @game.player1
    @player2 = @game.player2
    redirect('/game_over') if @game.game_over?
    erb(:duel)
  end

  post '/attack' do
    @game = Game.current_game
    @game.new_round
    @game.player1_play(params[:attack])
    @game.player2_play
    @game.update_score
    erb(:attack)
  end

  get '/game_over' do
    @game = Game.current_game
    erb(:game_over)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
