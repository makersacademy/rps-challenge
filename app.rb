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
    @name = params[:name]
    erb:play
 end

 post '/result' do
   @choice = params[:choice]
   $game.player.choose(@choice)
   $game.computer_choice
   $game.player_choice
   $game.winner
   erb:result
 end

end
