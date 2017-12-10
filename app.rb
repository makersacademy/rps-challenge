require 'sinatra/base'
require './lib/game'
require './lib/player'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    Game.game = Game.new(Player)
    erb :home_page
  end

  post '/play' do
    Game.game.player1 = Player.new(params[:Name])
    redirect '/play'
  end

  get '/play' do
    @play_text = Game.game.play
    @title = Game.game.title
    erb :play
  end

  post '/choose' do
    Game.game.player1.choice = params[:choice]
    redirect '/play'
  end
  run! if app_file == $0
end
