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
    @player1 = @game.player.name
    @choice = @game.choice
    @win = @game.win?
    @opponents_choice = @game.opponents_play
    erb(:play)
  end

  post '/rock' do
    @game.rock
    @game.opponents_play
    redirect '/play'
  end

  post '/paper' do
    @game.paper
    @game.opponents_play
    redirect '/play'
  end

  post '/scissors' do
    @game.scissors
    @game.opponents_play
    redirect '/play'
  end
end
