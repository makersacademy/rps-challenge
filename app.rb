require 'sinatra/base'
require './lib/computer_player'
require './lib/player'
require './lib/game'

class Rps < Sinatra::Base

  enable :sessions

  get('/') do
    erb(:index)
  end

  get('/name') do
    erb(:name)
  end

  post('/set_name') do
    player_1 = Player.new(params[:player])
    player_2 = ComputerPlayer.new
    @game = Game.create(player_1, player_2)
    redirect('/select-weapon')
  end

  get('/select-weapon') do
    @game = Game.instance
    erb(:select_weapon)
  end

  post('/set_weapon') do
    @game = Game.instance
    @game.player_1.select_weapon(params[:weapon])
    @game.player_2.select_weapon
    redirect('/fight')
  end

  get('/fight') do
    @game = Game.instance
    erb(:fight)
  end

  run! if app_file == $0
end
