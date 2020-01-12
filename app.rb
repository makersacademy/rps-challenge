require 'sinatra/base'
require './lib/game'
require './lib/player'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1_name])
    @game = Game.new($player_1)
    redirect '/play'
  end

  get'/play' do
    @player_1 = $player_1
    erb :play
  end

  get '/outcome' do
    @player_1_name = params[:player_1_name]
    erb :outcome
  end

end
