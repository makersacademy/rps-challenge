require 'sinatra/base'
require'./lib/game.rb'
require'./lib/player.rb'
class Rps < Sinatra::Base

  enable  :sessions

  get '/' do
    erb:index
  end

  post '/play' do
    @player = Player.new(params[:name])
    $game = Game.new(@player)
    @game = $game
    erb:play
 end

 post '/result' do
   @game = $game
   @game.player.choose(params[:choice])
   @game.computer_choice
   @game.player_choice
   @game.winner
   erb:result
 end

end
