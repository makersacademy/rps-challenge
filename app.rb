require 'sinatra/base'
require_relative './lib/game'

class RPS < Sinatra::Base

  before { @game = Game.instance }

  get '/' do
    erb :index
  end

  post '/name' do
    @game = Game.create(params[:name])
    redirect '/play'
  end

  get '/play' do
    @name = @game.name
    erb :play
  end

  post '/move_entry' do
    @game.move = params[:move]
    @game.comp_move
    redirect '/result'
  end

  get '/result' do
    @move, @move2 = @game.move, @game.move2
    @name, @name2 = @game.name, @game.name2
    @winner = @game.winner
    erb :result
  end

  run! if __FILE__ == $0
end
