require 'sinatra/base'
require_relative "./pc_player.rb"
require_relative "./result_checker.rb"
require_relative "./player.rb"
require_relative "./game.rb"

class Rps < Sinatra::Base
  enable :sessions

  before do
    @game = Game.instance
  end

  get "/" do
      erb :index
  end

  post "/name" do
    player_1 = Player.new(params[:player_name])
    player_2 = PcPlayer.new
    @game = Game.create(player_1, player_2)
    redirect("/play")
  end

  get "/play" do
    erb :play
  end

  post "/check" do
    @game.player_1.set_play(params[:selection])
    @game.player_2.set_play
    session[:result] = ResultChecker.check(@game.player_1.play, @game.player_2.play)

    redirect("/result")
  end

  get "/result" do
    @result = session[:result]
    erb :result
  end
end
