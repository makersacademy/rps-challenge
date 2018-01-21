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
    if params["Player two"] == ""
      Game.create(player_1)
    else
      player_2 = Player.new(params["Player two"])
      Game.create(player_1, player_2)
    end
    redirect "/play"
  end

  get "/play" do
    erb :play
  end

  post "/choices" do
    @game.player_1.move(params["attack"])
    @game.player_2.move
    redirect "/result"
  end

  get "/result" do
    @result = @game.winner
    erb :result
  end

  run! if app_file == $0

end
