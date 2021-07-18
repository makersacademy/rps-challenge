require 'sinatra/base'
require './lib/game'

class Rps < Sinatra::Base
  configure :development do
  end

  get '/' do
    erb(:index)
  end

  post '/names' do
    @game = Game.create(params[:player1name])
    erb(:play)
  end 

  get '/rock' do
    @game = Game.instance
    @game.player.move = 'Rock'
    redirect to '/determine'
  end

  get '/paper' do
    @game = Game.instance
    @game.player.move = 'Paper'
    redirect to '/determine'
  end

  get '/scissors' do
    @game = Game.instance
    @game.player.move = 'Scissors'
    redirect to '/determine'
  end

  get '/determine' do
    @game = Game.instance
    erb(:determine)
  end

end