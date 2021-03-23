require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/game'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    @player = Player.new(params[:player_name])
    @game = Game.create(@player)
    redirect to('/play')
  end

  get '/play' do
    @game = Game.instance
    erb(:play)
  end

  post '/choose' do
    @choice = params.keys[0].split(".")[0]
    @game = Game.instance
    @game.player_choice(@choice)
    redirect to('/result')
  end

  get '/result' do
    @game = Game.instance
    @player1_choice_img = "/img/#{@game.player1.choice}.png"
    @player2_choice_img = "/img/#{@game.player2.choice}.png"
    erb(:result)
  end

end
