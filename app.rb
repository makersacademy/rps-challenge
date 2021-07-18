require 'sinatra/base'
require './lib/game'

class Rps < Sinatra::Base
  configure :development do
  end

  get '/' do
    erb(:index)
  end

  post '/names' do
    @player = Player.create(params[:player1name])
    erb(:play)
  end 

  get '/rock' do
    @player = Player.instance
    @player.move = 'Rock'
    redirect to '/determine'
  end

  get '/paper' do
    @player = Player.instance
    @player.move = 'Paper'
    redirect to '/determine'
  end

  get '/scissors' do
    @player = Player.instance
    @player.move = 'Scissors'
    redirect to '/determine'
  end

  get '/determine' do
    @player = Player.instance
    erb(:determine)
  end

end