# in app.rb
require 'sinatra/base'
require './lib/game'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    Game.create_game(params[:player1])
    redirect to('/game')
  end

  before do
    @game = Game.instance_of_game
  end

  get '/game' do
    erb(:game)
  end

  post '/play' do
    @game.set_points(params[:points])
    redirect to('/play')
  end

  get '/play' do
    erb(:play)
  end

  run! if app_file == $0
end
