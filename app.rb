require 'sinatra/base'
require './lib/game'
require './lib/player'

class Rps < Sinatra::Base

  enable :sessions

  before do
    @game = Game.current_game
  end

  get '/' do
    erb :index
  end

  get '/name' do
    erb :name
  end

  post '/player' do
    player = Player.new(params[:player_name])
    computer = Player.new("Bot")
    @game = Game.store_game(player, computer)
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/play' do
    @game.play(params[:choice], @game.computer_selection)
    redirect '/game_over' if @game.end_of_game
    redirect '/play'
  end

  get '/game_over' do
    erb :game_over
  end

  run! if app_file == $0
end
