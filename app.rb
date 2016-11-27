require 'sinatra/base'
require './lib/game'

class RPS < Sinatra::Base

  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/name' do
    player = Player.new(params[:player])
    computer = Computer.new
    @game = Game.create(player, computer)
    redirect '/game'
  end

  get '/game' do
    erb :game
  end

  post '/rsp' do
    @game.player.choice(params[:choice])
    @game.computer.choice
    @game.choice
    @game.user_computer_choices
    redirect '/result'
  end

  get '/result' do
    erb :result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
