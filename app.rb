require 'sinatra/base'
require "./lib/game"

class RockPaperScissors < Sinatra::Base

  enable :sessions

  before do
    @game = Game.current
  end

  get "/" do
    erb :index
  end

  post "/start" do
    player_1 = Player.new(params["Enter name"])
    Game.create(player_1)
    redirect "/play"
  end

  get "/play" do
    erb :play
  end

  post "/result" do
    @game.player_1.move(params["attack"])
    @game.player_2.move(@game.choice)
    @result = @game.winner
    erb :result
  end

  run! if app_file == $0

end
