require 'sinatra/base'
require_relative 'lib/game'

class RockPaperScissors < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/names' do
    @game = Game.create(Player.new(params[:name_1]), Player.new('Your enemy'))
    redirect 'play'
  end

  get '/play' do
    @game = Game.instance
    erb :play
  end

  post '/make_choice' do
    @game = Game.instance
    @game.player_1.set_move(params[:choice])
    redirect 'game_over'
  end

  get '/game_over' do
    @game = Game.instance
    @game.choose_move(@game.player_2)
    @game.calculate_winner
    erb :game_over
  end

  run! if app_file == $0
end
