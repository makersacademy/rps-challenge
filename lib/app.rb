require 'sinatra/base'
require_relative 'player'

class Rps < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/name' do
    player = Player.new(params[:name])
    @game = Game.new_game(player)
    redirect '/game'
  end

  get '/game' do
    @game = Game.instance
    erb :game
  end

  post '/choice' do
    if params[:choice] == nil
      redirect '/game'
    else
      @game = Game.instance
      @game.choose_hand
      @game.player.choice = params[:choice]
      @game.hand_winner
      redirect '/game'
    end
  end



  # start the server if ruby file executed directly
  run! if app_file == $0
end
