require 'sinatra'
require './lib/game'
require './lib/player'
require './lib/opponent'

class RockPaperScissors < Sinatra::Base

  enable :sessions

  before do
    @game = Game.instance
  end

  get "/" do
    erb(:index)
  end

  post "/name" do
    player = Player.new(params[:player])
    opponent = Opponent.new
    @game = Game.create(player, opponent)
    redirect "/play"
  end

  get "/play" do
    erb(:play)
  end

  post "/option" do
    session[:option] = params[:option]
    redirect("/result")
  end

  get "/result" do
    @player_option = @game.player.player_option(session[:option])
    @opponent_option = @game.opponent.option
    erb(:result)
  end

  run! if app_file == $0

end
