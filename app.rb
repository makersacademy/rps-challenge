require 'sinatra'
require_relative './lib/player'
require './lib/game'
require_relative './lib/computer'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  before do
    @game = Game.current_game
  end

  ['/rock', '/paper', '/scissors'].each do |path|
    before path do
      redirect '/end_game' if @game.current_turn.score == 3 || @game.next_turn.score == 3
    end
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
    erb(:rock)
  end

  get '/paper' do
    erb(:paper)
  end

  get '/scissors' do
    erb(:scissors)
  end

  get '/end_game' do
    erb(:end_game)
  end
end
