require 'sinatra/base'
require './lib/player'
require './lib/game'
require './lib/rps_logic'
require './lib/draw'
require './lib/score'

class RPS < Sinatra::Base
  enable :sessions
  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new('Computer')
    @game = Game.create(player_1, player_2)
    redirect '/play'
  end

  before do
    @game = Game.instance
  end

  post '/select' do
    if params[:play] == 'Quit'
      redirect '/'
    end
    @game.player_1.last_move(params[:play])
    draw = Draw.new
    @game.player_2.last_move(draw.draw)
    redirect '/result'
  end

  get '/play' do
    erb :play
  end

  get '/result' do
    score = Score.new(@game.player_1, @game.player_2)
    result = RPSLogic.new
    @result = result.check(@game.player_1.move, @game.player_2.move)
    score.increment(@result)
    erb :result
  end

end
