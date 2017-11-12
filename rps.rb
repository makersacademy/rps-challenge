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
    Game.game(params[:player_1],params[:player_2])
    redirect '/play'
  end

  before do
    @game = Game.access_game
  end

  get '/play' do
    @name_1 = @game.player_1.name
    @name_2 = @game.player_2.name
    erb(:play)
  end

  post '/rock_1' do
    @game.player_1.choose_rock
    redirect '/play'
  end

  post '/scissor_1' do
    @game.player_1.choose_scissor
    redirect '/play'
  end

  post '/paper_1' do
    @game.player_1.choose_paper
    redirect '/play'
  end

  post '/rock_2' do
    @game.player_2.choose_rock
    redirect '/play'
  end

  post '/scissor_2' do
    @game.player_2.choose_scissor
    redirect '/play'
  end

  post '/paper_2' do
    @game.player_2.choose_paper
    redirect '/play'
  end

  get '/refresh' do
    @game.player_1.refresh
    @game.player_2.refresh
    redirect '/play'
  end
end
