require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'

class Rps < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/name' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    @game = Game.create(player_1, player_2)
    redirect '/rock_paper_scissors'
  end

  get '/rock_paper_scissors' do
    @game = Game.instance
    erb :rock_paper_scissors
  end

  post '/choice_selected' do
    @game = Game.instance
    @game.current_player.choice = params[:choice]
    redirect '/end_game' if @game.current_player == @game.player_2
    @game.switch_player
    redirect '/rock_paper_scissors'
  end

  get '/end_game' do
    @game = Game.instance
    @game.round
    erb :end_game
  end

  run! if app_file == $0
end
