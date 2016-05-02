require 'sinatra/base'
require './lib/game'
require './lib/player'
require './lib/computer'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    player = Player.new(params[:player_name])
    @game = Game.create(player)
    redirect '/play'
  end

  before { @game = Game.instance }

  get '/play' do
    erb :play
  end

  post '/round' do
    @game.player_choice(params[:move])
    @game.computer_choice
    erb :round
  end

  post '/result' do
   redirect '/result' if Game.instance.game_over?
   redirect '/play'
  end

  get '/result' do
    erb :result
  end

  run! if app_file == $0
end

