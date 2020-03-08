require "sinatra"
require_relative "./lib/player.rb"
require_relative "./lib/game.rb"

class Rps < Sinatra::Base

  get "/" do
    erb(:index)
  end

  post "/name" do
    human = Player.new(params[:human])
    computer = Player.new("computer")
    @game = Game.create(human, computer)
    redirect("/intro")
  end

  before do
    @game = Game.instance
  end

  get "/intro" do
    @human_name = @game.human.name
    @computer_name = @game.computer.name
    @human_hand = @game.human.hand
    erb(:intro)
  end

  get "/play" do
    @human_name = @game.human.name
    @computer_name = @game.computer.name
    @human_hand = @game.human.hand
    @computer_hand = @game.computer.hand
    @human_points = @game.human.points
    @computer_points = @game.computer.points
    @round_status = @game.round_status
    erb(:play)
  end

  post "/rock" do
    @game.human.set_hand(params[:rock])
    @game.start
    if @game.finish == false
      redirect("/play")
    else
      redirect("/game_over")
    end
  end

  post "/paper" do
    @game.human.set_hand(params[:paper])
    @game.start
    if @game.finish == false
      redirect("/play")
    else
      redirect("/game_over")
    end
  end

  post "/scissors" do
    @game.human.set_hand(params[:scissors])
    @game.start
    if @game.finish == false
      redirect("/play")
    else
      redirect("/game_over")
    end
  end

  get "/game_over" do
    @human_name = @game.human.name
    @computer_name = @game.computer.name
    @round_status = @game.round_status
    erb(:game_over)
  end

  run! if app_file == $0
end