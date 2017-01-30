require 'sinatra/base'
require './lib/game'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    player = Player.new(params[:name])
    computer = Computer.new
    @game = Game.create(player, computer)
    redirect '/play'
  end

  before do
    @game = Game.instance
  end

  get '/play' do
    erb :play
  end

  post '/choices' do
    @game.player.choose_weapon(params[:weapon])
    @game.computer.choose_weapon
    redirect '/result'
  end

  get '/result' do
    @game.player.weapon
    @game.computer.weapon
    erb :result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
