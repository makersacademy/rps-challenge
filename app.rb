require 'sinatra/base'
require './lib/player'
require './lib/game'

class RPS < Sinatra::Base

  before do
    @game = Game.instance
  end

  get '/' do
    erb(:index)
  end

  post '/name' do
    player = Player.new(params[:player_name])
    computer = Player.new("Computer")
    Game.create(player, computer)

    redirect :play
  end

  get '/play' do
    erb(:play)
  end

  post '/choice' do
    @game.player.choose(params[:choice])
    @game.computer.choose(@game.random_choice)

    redirect :result
  end

  get '/result' do
    @result = @game.winner.nil? ? "It's a draw!" : "#{@game.winner.name} wins!"
    erb(:result)
  end
end
