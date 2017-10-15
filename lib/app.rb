require 'sinatra/base'
require './lib/game.rb'

class Rockpaperscissors < Sinatra::Base

attr_reader :player

  get '/' do
    erb :enter_name
  end

  post '/present_choices' do
    @player = params[:player_name]
    Game.new(player)
    erb :present_choices
  end

end
