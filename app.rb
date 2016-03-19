require "sinatra/base"
require "./lib/game"
require "./lib/player"
require "./lib/computer"

class RPS < Sinatra::Base

  get "/" do
    erb :index
  end

  post "/names" do
    p player_1 = Player.new(params[:player_1])
    player_2 = Computer.new
    Game.start(Game.new(player_1, player_2))
    redirect "/play"
  end

  get "/play" do
    @player_1_name = game.player_1.name
    @player_2_name = game.player_2.name
    erb :play
  end

  post "/weapon" do
    Game::WEAPONS.each { |weapon| @weapon = weapon if params[weapon] }
    game.player_1.weapon=(@weapon)
    redirect "/result"
  end

  get "/result" do
    @result = game.result(player.weapon)
    @player_choice = game.player_1.weapon
    @computer_choice = game.player_2.weapon
    erb :result
  end

  private

  helpers do
    def game
      Game.game
    end
  end

  run! if app_file == $0
end
