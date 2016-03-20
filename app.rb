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

  post '/set' do
    Game.create_game(params[:player1], params[:player2] ||= "Computer", params[:points])
    redirect to('/play')
  end

  get '/play' do
    erb(:play)
  end

  before do
    @game = Game.instance_of_game
  end

  post '/choice' do
    @game.player1.choice(params[:choice])
    @game.player2.choice(:random)
    redirect to('/result')
  end

  get '/result' do
    @game.rps(@game.player1_weapon,@game.player2_weapon)
    erb(:result)
  end

  run! if app_file == $0
end
