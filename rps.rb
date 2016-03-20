require 'sinatra/base'
require './lib/player'
require './lib/game'

class Rps < Sinatra::Base

  get '/' do
    erb(:index)
  end

  before do
    @game = Game
  end

  post '/play' do
    player = Player.new(params[:player])
    Game.start(player)
    erb(:play)
  end

  post '/result' do
    choice = params[:choice]
    @game.player.make_a_choice(choice)
    @game.player.computer_choice
    erb(:result)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
