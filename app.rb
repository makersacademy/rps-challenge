require 'sinatra/base'
require './lib/game'
require './lib/player'


class Mama < Sinatra::Base
  enable :sessions

  before do
    @game = Game.instance
  end

  get '/' do
    erb :welcome
  end

  post '/entry' do
    player1 = Player.new(params[:player1])
    @game = Game.create(player1)
    redirect '/game'
  end

  get '/game' do
    erb :ready
  end

  get '/rps' do
    erb :gameplay
  end

  post '/result' do
    @game.player1.set_hand(params[:move])
    @game.gaming

    if @game.winner == @game.player1
    redirect '/winner'

    elsif @game.winner == @game.computer
    redirect '/looser'
    else
    redirect '/try_again'
    end
  end

  get '/winner' do
    erb :win
  end

  get '/looser' do
    erb :loose
  end

  get '/try_again' do
    erb :again
  end

end
