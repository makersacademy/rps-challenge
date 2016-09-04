require 'sinatra/base'
require './lib/player'
require './lib/computer'
require './lib/game'

class RPS < Sinatra::Base

enable :sessions

  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/name' do
    player = Player.new(params[:name])
    computer = Computer.new
    @game = Game.create(player, computer)
    redirect '/choose'
  end

  get '/choose' do
    @game = Game.instance
    erb :choice
  end

  post '/weapon' do
    # @game = Game.instance
    @weapon = @game.player.weapon_choice(params[:weapon])
    @comp_weapon = @game.computer.weapon_choice.capitalize
    erb :result
  end


  run! if app_file == $0

end
