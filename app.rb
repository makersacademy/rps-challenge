require 'sinatra/base'
require './lib/game.rb'

class RockPaperScissor < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/names' do
    Game.game(params[:player1])
    redirect('/play')
  end

  before do
    @game = Game.access
  end

  get '/play' do
    @game.play
    @player1 = @game.player.name
    erb(:play)
  end

  post '/rock' do
    @game.turn.rock
    @game.turn.opponents_play
    redirect('/turn')
  end

  post '/paper' do
    @game.turn.paper
    @game.turn.opponents_play
    redirect('/turn')
  end

  post '/scissors' do
    @game.turn.scissors
    @game.turn.opponents_play
    redirect('/turn')
  end

  get '/turn' do
    @choice = @game.turn.choice
    @opponents_choice = @game.turn.opponents_play
    @win = @game.turn.win?
    erb(:turn)
  end
end
