require 'sinatra/base'
require './lib/player'
require './lib/game'

class RockPaperScissors < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/name' do
    player = Player.new(params[:player_1_name])
    @game = Game.create(player)
    redirect '/play'
  end

  get '/play' do
    @game = Game.instance
    erb :play
  end

  post '/result' do
    @game = Game.instance
    @game.player_selection(params[:weapon])
    @game.computer_selection
    @game.result
    erb :result
  end

  run! if app_file == $0
end
