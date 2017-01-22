require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'


class RPS < Sinatra::Base

  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/names' do
    player1 = Player.new(params[:player_1_name])
    @game = Game.create(player1)
    erb :play
  end

  post '/choice' do
    @choice = params[:choice]
    @game.computer_choice
    @game.result(@choice)
    @game.reset
    erb :game
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
