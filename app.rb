require 'sinatra/base'
require './lib/player'
require './lib/game'
require 'pry'

class RPSLS < Sinatra::Base

  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:player_1])
    player_2 = Player.new(params[:player_2])
    @game = Game.create(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/player_1_choice' do
    @game.pick_choice(params[:choice])
    @game.switch_turns
    redirect '/play'
  end

  post '/player_2_choice' do
    @game.pick_choice(params[:choice])
    @game.switch_turns
    redirect '/play'
  end

  get '/gameover' do
    erb :gameover
  end

  post '/reset' do
    @game.reset
    redirect '/play'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
