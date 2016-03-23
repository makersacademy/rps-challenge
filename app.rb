require "sinatra/base"
require "./lib/game"
require "./lib/player"
require "./lib/computer"

class RPS < Sinatra::Base

  get "/" do
    erb :index
  end

  post "/names" do
    player_1 = Player.new(params[:player_1])
    name = params[:player_2]
    name == "" ? player_2 = Computer.new : player_2 = Player.new(name)
    Game.start(Game.new(player_1, player_2))
    redirect "/play"
  end

  get "/play" do
    erb :play
  end

  post "/weapon" do
    store_weapon
    game.player_1.pick(@weapon)
    redirect "/choose-again" unless computer?
    game.player_2.pick_weapon
    redirect "/result"
  end

  get "/choose-again" do
    erb :choose_again
  end

  post "/second-weapon" do
    store_weapon
    game.player_2.pick(@weapon)
    redirect "/result"
  end

  get "/result" do
    @result = game.result(game.player_1.weapon, game.player_2.weapon)
    erb @result
  end

  private

  helpers do
    def game
      Game.game
    end

    def store_weapon
      Game::WEAPONS.keys.each { |weapon| @weapon = weapon if params[weapon] }
    end

    def computer?
      game.player_2.name == "Computer"
    end
  end

  run! if app_file == $0
end
