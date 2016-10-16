require "sinatra"
require "sinatra/base"
require_relative "lib/game"


class RockOff < Sinatra::Base

#   if ENV['RACK_ENV'] == 'test'
#   disable :show_exceptions
# end

  get "/" do
    erb(:index)
  end

  post "/names" do
    Game.start(params[:player_name])
    erb(:fight)
  end

  post "/pick-choice" do
    Game.game.make_player_choice(params[:choice])
    erb(:fight)
  end

  post "/show-winner" do
    Game.game.set_computer_choice
    p Game.game.computer_choice
    @winner = Game.game.set_winner
    erb(:fight)
  end

  run! if app_file == $0
end
