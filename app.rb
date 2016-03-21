require 'sinatra/base'
require './lib/game'

class Rps < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/name' do
    player = Player.new(params[:name])
    Game.start(player)
    redirect '/play'
  end

  before do
    @game = Game.this_game
  end

  get '/play' do
    erb(:play)
  end

  get '/scissors' do
    @game.player.choose("scissors")
    redirect '/results'
  end

  get '/paper' do
    @game.player.choose("paper")
    redirect '/results'
  end

  get '/rock' do
    @game.player.choose("rock")
    redirect '/results'
  end

  get '/results' do
    erb(:results)
  end

  run! if app_file == $0
end
