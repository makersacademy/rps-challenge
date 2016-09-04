require 'sinatra/base'
require './lib/player'
require './lib/computer'
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
    redirect '/choose'
  end

  before do
    @game = Game.instance
  end

  get '/choose' do
    erb :choice
  end

  post '/weapon' do
    @game.player.weapon_choice(params[:weapon])
    @game.computer.weapon_choice
    erb :result
  end

  run! if app_file == $0

end
