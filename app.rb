require 'sinatra/base'
require './lib/player'
require './lib/computer_opponent'
require './lib/game'

class RockPaperScissors < Sinatra::Base
  before do
    @game = Game.instance
  end

  get '/' do
    erb(:index)
  end

  post '/new-game' do
    @game = Game.create(params[:game_opponent], params[:game_type])
    redirect '/enter-names'
  end

  get '/enter-names' do
    erb(:names)
  end

  post '/names' do
    @game.player1 = Player.new(params[:player1_name])
    @game.player2 = params[:player2_name].nil? ? ComputerOpponent.new : Player.new(params[:player2_name])
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

  post '/action' do
    @game.player1.action = params[:player1_action]
    @game.player2.action = params[:player2_action]
    redirect '/result'
  end

  get '/result' do
    @game.result = @game.return_result(@game.player1, @game.player2)
    erb(:result)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
