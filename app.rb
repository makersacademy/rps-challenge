require "sinatra/base"
require "./lib/game"
require "./lib/player"

class RPS < Sinatra::Base

  get "/" do
    erb :index
  end

  post "/names" do
    player = Player.new(params[:player])
    Game.start(Game.new(player))
    redirect "/play"
  end

  get "/play" do
    @player_name = player.name
    erb :play
  end

  post "/weapon" do
    Game::WEAPONS.each { |weapon| @weapon = weapon if params[weapon] }
    player.pick(@weapon)
    redirect "/result"
  end

  get "/result" do
    @result = game.result(player.weapon)
    @player_choice = player.weapon
    @computer_choice = game.computer_choice
    erb :result
  end

  private

  helpers do
    def game
      Game.game
    end

    def player
      game.player
    end
  end

  run! if app_file == $0
end
