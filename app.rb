require 'sinatra/base'
require './lib/player'
require './lib/computer'
require './lib/game'

class RPSWeb < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/name' do
    player = Player.new(params[:player])
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

  get '/rock' do
    @game.add_player_weapon(:rock)
    @game.add_computer_weapon
    @game.set_result
    erb(:rock)
  end

  get '/paper' do
    @game.add_player_weapon(:paper)
    @game.add_computer_weapon
    @game.set_result
    erb(:paper)
  end

  get '/scissors' do
    @game.add_player_weapon(:scissors)
    @game.add_computer_weapon
    @game.set_result
    erb(:scissors)
  end

  run! if app_file == $0
end
