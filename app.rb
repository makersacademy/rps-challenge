require 'sinatra/base'
require 'shotgun'
require './lib/player'
require './lib/game'
require './lib/computer'
require 'pry'

class RPS < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/register' do
    @game = Game.create(Player.new(params[:name]), Computer.new)
    redirect '/game'
  end

  before do
    @game = Game.instance
  end

  get '/game' do
    erb(:game)
  end

  post '/play' do
    player_choice = @game.player.selection(params[:player_choice].to_sym)
    @game.computer.selection
    computer_choice = @game.computer.computer_choice
    @game.play(player_choice, computer_choice)
    redirect '/result'
  end

  get '/result' do
    erb(:result)
  end

  run! if app_file == $0

end
