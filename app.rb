require 'sinatra/base'
require_relative './lib/game.rb'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    @game = Game.create(params[:player_name])
    redirect '/play'
  end

  get '/play' do
    @game = Game.instance
    erb(:play)
  end

  # could have a separate route for
  # each button press
  post '/rock' do
    @game = Game.instance
    @game.play('rock')
    redirect '/play'
  end

  post '/paper' do
    @game = Game.instance
    @game.play('paper')
    redirect '/play'
  end

  post '/scissors' do
    @game = Game.instance
    @game.play('scissors')
    redirect '/play'
  end

end
