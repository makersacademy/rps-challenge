require 'sinatra/base'
require './lib/game'
require './lib/player'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    $game = Game.new(player_1)
    redirect '/play'
  end

  get'/play' do
    @game = $game
    erb :play
  end

  get '/runMethod' do
    @game = $game
    $choice = (params[:choice])
    p params[:choice]
    redirect '/outcome'
  end

  get '/outcome' do
    @choice = $choice
    @game = $game
    erb :outcome
  end

end
