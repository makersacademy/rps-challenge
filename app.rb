require 'sinatra'
require './lib/game'
require './lib/player'

class Rps < Sinatra::Base

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
    player_choice = @game.player.makes_choice(params[:player_choice])
    computer_choice = @game.computer.makes_choice
    @game.rps(player_choice, computer_choice)
    redirect '/result'
  end

  get '/result' do
    erb(:result)
  end

end
