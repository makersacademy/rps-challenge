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
    player_1 = Player.new(params[:player_1_name])
    if params[:player_2_name].empty?
      player_2 = PcPlayer.new
    else
      player_2 = Player.new(params[:player_2_name])
    end
    @game = Game.create(player_1, player_2)
    redirect("/play")
  end

  get "/play" do
    if @game.current_turn.class.name == "PcPlayer"
      redirect("/check")
    else
      erb :play
    end
  end

  post "/check" do
    @game.current_turn.set_play(params[:selection])
    if @game.current_turn == @game.player_1
      @game.switch_turn
      redirect("/play")
    else
      redirect("/result")
    end
  end

  get "/check" do
    @game.current_turn.set_play
    redirect("/result")
  end

  get "/result" do
    @result = ResultChecker.check(@game.player_1.play, @game.player_2.play)
    erb :result
  end
end
