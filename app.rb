# in app.rb
require 'sinatra/base'
require './lib/game'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  get '/singleplayer' do
    erb(:singleplayer)
  end

  # post '/single-player' do
  #   Game.create_game(params[:player1])
  #   redirect to('/game')
  # end

  # before do
  #   @game = Game.instance_of_game
  # end
  #
  # get '/game' do
  #   erb(:game)
  # end
  #
  # post '/play' do
  #   @game.set_points(params[:points])
  #   redirect to('/play')
  # end
  #
  # get '/play' do
  #   erb(:play)
  # end
  #
  # post '/round' do
  #   @game.weapons(params[:choice])
  #   @game.result
  #   redirect to('/result')
  # end
  #
  # get '/result' do
  #   erb(:result)
  # end

  run! if app_file == $0
end
