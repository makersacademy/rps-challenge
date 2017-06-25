require 'sinatra/base'
require './lib/player'
require './lib/game'
require './lib/computer'
require './lib/weapon'

class RockPaperScissors < Sinatra::Base
  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/names' do
    @game = Game.create(Player.new(params[:player1]), Computer.new)
    redirect to '/play'
  end

  get '/play' do
    erb :play
  end

  post '/attack' do
    choice = params.first.first.to_sym
    erb @game.result(@game.player1.choose(choice), @game.player2.choose)
  end

  run! if app_file == $PROGRAM_NAME
end
