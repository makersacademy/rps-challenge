require 'sinatra/base'
require_relative 'lib/game'
require_relative 'lib/computer'
require_relative 'lib/player'

class Rps < Sinatra::Base
  enable :sessions

get ('/') do
  erb(:index)
end

post ('/name') do
  player1 = Player.new(params[:player_name])
  @game = Game.create(player1, Computer.new)
  redirect('./play')
end

 before do
   @game = Game.instance
 end

get ('/play') do
  erb(:play)
end

post ('/choice') do
   @game.player1.set_choice(params[:choice])
   @game.player2.set_choice
   redirect('./result')
 end

get ('/result') do
  # @computer = Computer.new
  erb(:result)
end

run! if app_file == $0

end
