require 'sinatra/base'
require './lib/player'
require './lib/game'

class RPS < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:name])
    @game = Game.create(player_1)
    redirect to('/play')
  end

  get '/play' do
    @game = Game.instance
    erb :play
  end

  post '/go' do
    @game = Game.instance
    @game.set_player_1_choice(params[:choice])
    @game.computer_choice
    @game.result
    erb :go
  end

  run! if app_file == $0
end
