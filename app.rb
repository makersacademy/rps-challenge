require 'sinatra'
require 'sinatra/base'
require './lib/game'
require './lib/player'
require './lib/ai_computer'

class RockPaperScissors < Sinatra::Base

  enable :sessions

  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/names' do
    player = Player.new(params[:player_name])
    @game = Game.create(player)
    redirect '/dashboard'
  end

  get '/dashboard' do
    erb :dashboard
  end

  post '/play' do
    erb :play
  end

  post '/move' do
    @player_move = params[:choice]
    @outcome_value = @game.outcome(@player_move, @game.make_random_move)
    erb :result
  end

  run! if app_file == $0

end
