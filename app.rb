require 'sinatra/base'
require_relative './lib/game'
require_relative './lib/player'
require_relative './lib/computer'

class Rps < Sinatra::Base
  before do
    @game = Game.instance
  end

  get '/' do
    erb(:index)
  end

  get '/name' do
    erb(:name)
  end

  post '/name' do
    @game.player_1 = Player.new(params[:name])
    @game.player_2 = Computer.new

    redirect('/game')
  end

  get '/game' do
    erb(:game)
  end

  post '/rock' do
    @game.player_1.move = :rock
    @game.player_2.make_move

    redirect('/result')
  end

  post '/paper' do
    @game.player_1.move = :paper
    @game.player_2.make_move

    redirect('/result')
  end

  post '/scissors' do
    @game.player_1.move = :scissors
    @game.player_2.make_move

    redirect('/result')
  end

  get '/result' do
    p @game.player_1.move
    p @game.player_2.move
    p @game

    erb(:result)
  end
end
