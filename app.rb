require 'sinatra/base'
require './lib/player'
require './lib/game'

class Rps < Sinatra::Base
  enable :sessions

  before { @game = Game.instance }

  get '/' do
    erb :home
  end

  post '/names' do
    @player_1 = Player.new(params[:player_1_name])
    @player_2 = Player.new(params[:player_2_name])
    @game = Game.create(@player_1, @player_2)
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  get '/confirm' do
    erb :confirm
  end

  post '/switch-turns' do
    redirect '/winner' if @game.current_turn == @game.player_2
    @game.switch_turns
    redirect '/play'
  end

  post '/rock' do
    @game.current_turn.choice = 'Rock'
    redirect '/confirm'
  end

  post '/paper' do
    @game.current_turn.choice = 'Paper'
    redirect '/confirm'
  end

  post '/scissors' do
    @game.current_turn.choice = 'Scissors'
    redirect '/confirm'
  end

  get '/winner' do
    erb :winner
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
