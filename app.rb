require 'sinatra/base'
require './lib/game'
require './lib/player'

class RPS < Sinatra::Base

  before do
    @game = Game.current
  end

  get "/" do
    erb(:sign_in)
  end

  post "/names" do
    p params
    player1 = params[:player1]
    player2 = params[:player2]
    type = params[:player_type]
    rules = params[:rules]
    Game.start(player1, player2, type, rules)
    redirect '/play'
  end

  get "/play" do
    erb(:play)
  end

  post "/attack" do
    @game.action(@game.player1, params[:action].to_sym)
    if @game.type == "computer"
      @game.action(@game.player2)
      redirect '/result'
    else
      redirect '/player2'
    end
  end

  get "/player2" do
    erb(:player2)
  end

  post "/calculate" do
    @game.action(@game.player2, params[:action].to_sym)
    redirect '/result'
  end

  get "/result" do
    erb(:result)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
