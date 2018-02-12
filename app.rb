require 'sinatra/base'
require_relative 'lib/game'

class RockPaperScissors < Sinatra::Base

  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/names' do
    @game = Game.create(Player.new(params[:name_1]), Player.new('Your enemy'))
    redirect 'play'
  end

  get '/play' do
    erb :play
  end

  post '/make_choice' do
    @game.player_1.set_move(params[:choice])
    redirect 'game_over'
  end

  get '/game_over' do
    @game.choose_move(@game.player_2)
    @game.calculate_winner
    erb :game_over
  end

  run! if app_file == $0
end
