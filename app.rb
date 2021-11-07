require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'
require './lib/computer'
require './lib/game'

class RockPaperScissors < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    player_1 = Player.new(params["player_1_name"])
    computer = Computer.new
    $game = Game.new(player_1, computer)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb(:play)
  end

  get '/choose' do
    @game = $game
    erb(:choose)
  end

  post '/choice' do
    @game = $game
    @game.player_1.update_choice(params["choice"])
    redirect '/choice-made'
  end

  get '/choice-made' do
    @game = $game
    @game.computer.random
    erb(:choice_made)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
