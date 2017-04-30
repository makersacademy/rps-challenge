require 'sinatra'
require_relative './lib/player'
require './lib/game'
require_relative './lib/computer'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  before do
    @game = Game.current_game
  end

  get '/' do
    erb(:index)
  end

  post '/names' do
    @game = Game.start(Player.new(params[:Player1]), Computer.new)
    redirect '/play'
  end


  get '/play' do
    erb(:play)
  end

  get '/rock' do
    redirect '/end_game' if @game.current_turn.score == 3 || @game.next_turn.score == 3
    @game.current_turn.play(rock)
    erb(:rock)
  end

  get '/paper' do
    redirect '/end_game' if @game.current_turn.score == 3 || @game.next_turn.score == 3
    erb(:paper)
  end

  get '/scissors' do
    redirect '/end_game' if @game.current_turn.score == 3 || @game.next_turn.score == 3
    erb(:scissors)
  end

  get '/end_game' do
    erb(:end_game)
  end
end
