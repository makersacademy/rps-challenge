require 'sinatra'
require './lib/player'
require './lib/ai_player'
require './lib/game'
require './lib/choices'
require './lib/victory_matrix'

class RPS < Sinatra::Base

  enable :sessions

  before do
    pass if request.path == '/' || request.path == '/name' || request.path == '/replay'
    @game = Game.current_game
  end

  get '/' do
    erb(:index)
  end

  post '/name' do
    Game.new_game([Player.new(params[:player_1_name]), Player.new(params[:player_2_name])])
    redirect('/play')
  end

  get '/play' do
    erb(:play)
  end

  post '/choose' do
    @game.players[0].choose(params[:player_1_choice])
    @game.players[1].choose(params[:player_2_choice])
    redirect('/result')
  end

  get '/result' do
    @result = @game.result
    erb(:result)
  end

  post '/replay' do
    redirect('/play')
  end
end
