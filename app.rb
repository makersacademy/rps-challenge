require 'sinatra/base'
require './lib/game'
require './lib/player'
require './lib/game_logic_ls'

class RPSGame < Sinatra::Base
  before do
    @game = Game.instance
  end

  get '/' do
    erb :welcome
  end

  post '/game' do
    player1_name = params[:player_name] == "" ? 'Annonymous' : params[:player_name]
    player1 = Player.new(player1_name)
    player2 = Player.new('COMPUTER')
    @game = Game.create(GameLogic, player1, player2)

    redirect '/game'
  end

  get '/game' do
    erb :game
  end

  post '/result' do
    @game.player1.choice = params[:choice]
    @game.player2.choice = GameLogic.ai_selection

    redirect '/result'
  end

  get '/result' do
    erb :result
  end

  run! if app_file == $PROGRAM_NAME
end
