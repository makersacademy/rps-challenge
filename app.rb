require 'sinatra/base'
require './lib/game'
require './lib/player'
require './lib/computer'

class RPS < Sinatra::Base

  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/play' do
    player_1 = Player.new(params[:player_name])
    player_2 = Computer.new
    @game = Game.create(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  get '/result' do
    if @game.win?
      erb :win
    elsif @game.lose?
      erb :lose
    else
      erb :draw
    end
  end

  post '/result' do
    @game.player_1.weapon = params[:player_weapon].to_sym
    @game.return_weapons
    redirect '/result'
  end

  run! if app_file == $0
end
