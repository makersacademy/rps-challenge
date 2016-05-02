require 'sinatra/base'
require './lib/player'
require './lib/game'
require './lib/computer'

class RPS < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/name' do
    @player = Player.new(params[:player_name])
    @game = Game.create(@player)
    redirect '/play'
  end

  before do
    @game = Game.instance
  end

  get '/play' do
    erb(:play)
  end

  post '/action' do
    @game.player_choice(params[:move])
    @game.computer_choice
    @game.calculate_result
    erb(:action)
  end

  get '/rematch' do
    @game.rematch
    redirect '/play'
  end

run! if app_file == $PROGRAM_NAME
end
