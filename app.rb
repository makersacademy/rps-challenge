require 'sinatra/base'
require './lib/player.rb'
require './lib/computer.rb'
require './lib/game.rb'

class RockPaperScissors < Sinatra::Base

  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/name' do
    player1 = Player.new(params[:player])
    player2 = Computer.new
    Game.create(player1, player2)
    redirect to '/play'
  end

  get '/play' do
    erb :play
  end

  post '/moves' do
    @game.player1.move_choice(params[:option])
    @game.player2.move_choice
    redirect to '/result'
  end

  get '/result' do
    erb :result
  end
end
