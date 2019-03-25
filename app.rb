require 'sinatra/base'
require './lib/player.rb'
require './lib/computer.rb'
require './lib/game.rb'

class RPS < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/info' do
    @game = Game.create(Player.new(params[:name]), Computer.new)
    redirect '/play'
  end

  get '/play' do
    @game = Game.instance
    erb :play
  end

  post '/option' do
    @game = Game.instance
    @player_move = @game.player.move(params[:option])
    redirect '/result'
  end

  get '/result' do
    @game = Game.instance
    @player_move = @game.player.option
    @computer_choice = @game.computer.computer_move
    erb :result
  end
  # run! if app_file == $PROGRAM_NAME
end
