require 'sinatra/base'
require './lib/player'
require './lib/game'

class RPSWeb < Sinatra::Base
  enable :sessions

  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/game' do
    player_a = HumanPlayer.new(params[:player_name])
    player_b = ComputerPlayer.new
    @game = Game.create(player_a, player_b)

    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/choose' do
    @game.choose_weapons
    @game.player_a.weapon = params[:option].to_sym
    redirect '/result'
  end

  get '/result' do
    erb @game.result
  end

  get '/play_again' do
    redirect '/play'
  end

  run! if app_file == $0
end
