require "sinatra"
require "sinatra/base"
require_relative "lib/game"


class RockOff < Sinatra::Base

#   if ENV['RACK_ENV'] == 'test'
#   disable :show_exceptions
# end
  puts "Working"
  get "/" do
    erb(:index)
  end

  post "/names" do
    Game.start(params[:player_name])
    p params
    erb(:fight)
  end

  post "/pick-choice" do
    Game.game.make_player_choice(params[:pick])
    p params
    erb(:fight)
  end


  run! if app_file == $0
end
