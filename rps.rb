require 'sinatra/base'
require './lib/game.rb'
require './lib/player.rb'
require './lib/computer.rb'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    Game.game(params[:player])
    redirect '/play'
  end

  before do
    @game = Game.access_game
  end

  get '/play' do
    @name = @game.player.name
    erb(:play)
  end

  post '/rock' do
    @game.player.choose_rock
    @game.computer.random_choice
    redirect '/play'
  end

  post '/scissor' do
    @game.player.choose_scissor
    @game.computer.random_choice
    redirect '/play'
  end

  post '/paper' do
    @game.player.choose_paper
    @game.computer.random_choice
    redirect '/play'
  end
end
