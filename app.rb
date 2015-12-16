require 'sinatra/base'
require './lib/player'
require './lib/computer_player'
require './lib/game'
require './lib/weapons'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/players' do
    if params[:player_2] == ''
    $game = Game.new(Player.new(params[:player_1]), ComputerPlayer.new, Weapons.new)
    else
    $game = Game.new(Player.new(params[:player_1]), Player.new(params[:player_2]), Weapons.new)
    end
    redirect :play
  end

  get '/play' do
    game
    erb :play
  end

  post '/rock1' do
    game.rock1
    redirect :choice
  end

  post '/paper1' do
    game.paper1
    redirect :choice
  end

  post '/scissors1' do
    game.scissors1
    redirect :choice
  end

  post '/rock2' do
    game.rock2
    redirect :choice
  end

  post '/paper2' do
    game.paper2
    redirect :choice
  end

  post '/scissors2' do
    game.scissors2
    redirect :choice
  end

  get '/choice' do
    game
    erb :choice
  end

  get '/outcome' do
    game
    erb :outcome
  end

  get '/game_over' do
    game
    erb :game_over
  end

  helpers do
    def game
      @game ||= $game
    end
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
