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
    p @game.p1.name
    erb :play
  end

  run! if app_file == $PROGRAM_NAME
end
