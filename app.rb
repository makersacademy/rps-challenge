require 'sinatra/base'
require_relative './lib/game.rb'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/singleplayer' do
    erb(:enter_name)
  end

  post '/multiplayer' do
    erb(:enter_two_names)
  end

  post '/name' do
    @game = Game.create(params[:player_name])
    redirect '/play'
  end

  get '/play' do
    @game = Game.instance
    erb(:play)
  end

  post '/rock' do
    @game = Game.instance
    @game.play('Rock')
    redirect '/winner'
  end

  post '/paper' do
    @game = Game.instance
    @game.play('Paper')
    redirect '/winner'
  end

  post '/scissors' do
    @game = Game.instance
    @game.play('Scissors')
    redirect '/winner'
  end

  get '/winner' do
    @game = Game.instance
    erb(:winner)
  end

end
