require 'sinatra/base'
require './lib/game'

class RPS < Sinatra::Base

get '/' do
  erb :index
end


post '/winners' do
  @player_1_name = params[:player_1_name]
  @choice = params[:choice]
  @game = Game.new(@choice, @player_1_name)
  @game.computers_choice
  @game.compare
  erb :winners
end

end
