require 'sinatra/base'
require './lib/player' #require with path
require './lib/game'

class Rps < Sinatra::Base
  get '/' do
    'Hello Rps!'
    erb :index
  end
  post '/names' do
    player = Player.new(params[:player_name])
    Game.create(player)
    @game=Game.game_in_play
    erb :play
  end
  before do
    @game=Game.game_in_play
  end
  get '/rock' do

    #@computer = @game.computer_choice
    @game.rock(@game.computer.computer_choice)
    @game.outcome
    erb :rock
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
