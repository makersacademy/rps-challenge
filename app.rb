require 'sinatra/base'
require './lib/game.rb'
require './lib/player.rb'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  before do
    @game = Game.current_game
  end

  get '/' do
    erb :index
  end

  post '/name' do
    player = Player.new(params[:player])
    Game.store_game(Game.new(player))
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/choice' do
    @game.player_choice(params[:choice])
    redirect '/results'
  end

  get '/results' do
    erb :results
  end

  run! if app_file == $0
end
