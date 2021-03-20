require 'sinatra/base'
require './lib/player'
require './lib/game'

class RockPaperScissors < Sinatra::Base


  get '/home' do
      erb :home
  end

  post '/play' do
    player = Player.new(params[:player_name])
    @game = Game.create(player)
    redirect '/play'
  end

  before do
    @game = Game.instance
  end

  get '/play' do
    erb :play
  end

  post '/nextgame' do
    redirect '/play'
  end

  post '/result' do
    @game.player_chooses(params[:choice])
    @game.computer_chooses
    redirect '/result'
  end

  get '/result' do
    @win_lose_draw = @game.win_lose_draw(@game.player_choice, @game.computer_choice)
    erb :result
  end
end
