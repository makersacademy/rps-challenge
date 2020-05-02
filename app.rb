require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'

class Rps < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/name' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new('Computer')
    @game = Game.create(player_1, player_2)
    redirect '/rock_paper_scissors'
  end

  get '/rock_paper_scissors' do
    @game = Game.instance
    erb :rock_paper_scissors
  end

  post '/choice_selected' do
    @game = Game.instance
    @game.player_1.choice = params[:choice]
    @game.player_2.choice = ["rock", "paper", "scissors"].sample
    redirect '/end_game'
  end

  get '/end_game' do
    @game = Game.instace
    erb :end_game
  end

  run! if app_file == $0
end
