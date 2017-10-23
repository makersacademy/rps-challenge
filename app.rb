require 'sinatra/base'
require './lib/game'
require './lib/player'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/play' do
    player = Player.new(params[:player_name])
    Game.start(player)
    @game = Game.instance
    @player_name = @game.player_name
    @computer_name = @game.computer_name
    erb :play
  end

  before do
    @game = Game.instance
  end

  post '/winner' do
    @game.save_player_sign(params[:sign])
    @player_name = @game.player_name
    @game.set_computer_sign
    @computer_name = @game.computer_name
    @computer_sign = @game.computer_sign
    @player_sign = @game.player_sign
    @winner_name = @game.winner_name
    @random_number = rand
    erb :winner
  end

  get '/replay' do
    @player_name = @game.player_name
    @computer_name = @game.computer_name
    erb :play
  end

  run! if app_file == $0
end
