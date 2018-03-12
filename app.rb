require 'sinatra/base'
require './lib/player'
require './lib/computer'
require './lib/game'

class Rps < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    player = Player.new(params[:player_name])
    computer = Computer.new
    @game = Game.create(player, computer)
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  before do
    @game = Game.instance
  end

  post '/selection' do
    player_option = @game.player.option(params[:option])
    computer_option = @game.computer.option
    @game.move(player_option, computer_option)
    @game.result
    redirect '/result'
  end

  get '/result' do
    erb :result
  end

  run! if app_file == $0
end
