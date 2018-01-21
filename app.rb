require 'sinatra/base'
require './lib/game'
require './lib/player'

class RPS < Sinatra::Base

  attr_reader :player_choice, :computer_choice

  run! if app_file == $0

  get '/' do
    erb(:index)
  end

  post '/name' do
    player = Player.new(params[:player_name])
    computer = Computer.new
    Game.create(player, computer)
    redirect '/play'
  end

  before { @game = Game.instance }

  get '/play' do
    erb(:play)
  end

  post '/selection' do
    @game.player.makes_choice(params[:player_choice])
    @game.rps
    redirect '/result'
  end

  get '/result' do
    erb @game.result
  end

end
