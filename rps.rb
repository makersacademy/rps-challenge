require 'sinatra/base'
require './lib/player'
require './lib/game'
require './lib/computer'

class RPS < Sinatra::Base

  before do
    @game = Game.instance
  end

  get '/' do
    erb(:index)
  end

  post '/names' do
    @game = Game.create(Player.new(params[:player_name]), Computer.new)
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

  post '/rock' do
    @game.player.choice("ROCK")
    redirect '/result'
  end

  post '/paper' do
    @game.player.choice("PAPER")
    redirect '/result'
  end

  post '/scissors' do
    @game.player.choice("SCISSORS")
    redirect '/result'
  end

  get '/result' do
    erb(:result)
  end

  run! if app_file == $0
end
