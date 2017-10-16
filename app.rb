require 'sinatra/base'
require './lib/player'
require './lib/game'

class RockPaperScissors < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/names' do
    p1 = Player.new(params[:p1])
    p2 = Player.new(params[:p2])
    @game = Game.create(p1, p2)
    redirect '/play'
  end

  get '/play' do
    @game = Game.instance
    erb :play
  end

  post '/move' do
    @game = Game.instance
    @game.p1.move = params[:move]
    @p1_move = @game.p1.move
    @comp_move = @game.move
    @game.clash(@p1_move, @comp_move)
    redirect '/play'
  end

  run! if app_file == $PROGRAM_NAME
end
