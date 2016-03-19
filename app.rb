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
    if params[:player_2] == ""
      player_2 = Computer.new
    else
      player_2 = Player.new(params[:player_2])
    end
    Game.start(Game.new(player_1, player_2))
    redirect "/play"
  end

  get "/play" do
    @player_1_name = game.player_1.name
    @player_2_name = game.player_2.name
    erb :play
  end

  post "/weapon" do
    store_weapon
    game.player_1.pick(@weapon)
    redirect "/choose-again" unless game.player_2.name == "Computer"
    game.player_2.pick_weapon
    redirect "/result"
  end

  get "/choose-again" do
    @player_2_name = game.player_2.name
    erb :choose_again
  end

  post "/second-weapon" do
    store_weapon
    game.player_2.pick(@weapon)
    redirect "/result"
  end

  get "/result" do
    @result = game.result(game.player_1.weapon, game.player_2.weapon)
    @player_1_name = game.player_1.name
    @player_2_name = game.player_2.name
    @player_1_choice = game.player_1.weapon
    @player_2_choice = game.player_2.weapon
    erb :result
  end

  private

  helpers do
    def game
      Game.game
    end

    def store_weapon
      Game::WEAPONS.each { |weapon| @weapon = weapon if params[weapon] }
    end
  end

  run! if app_file == $0
end
