require 'sinatra/base'
require './lib/computer_player'
require './lib/player'

class Rps < Sinatra::Base

  enable :sessions

  get('/') do
    erb(:index)
  end

  get('/name') do
    erb(:name)
  end

  post('/set_name') do
    $player = Player.new(params[:player])
    redirect('/select-weapon')
  end

  get('/select-weapon') do
    @player = $player
    erb(:select_weapon)
  end

  post('/set_weapon') do
    @player = $player
    @player.select_weapon(params[:weapon])
    redirect('/fight')
  end

  get('/fight') do
    @player = $player
    @computer = ComputerPlayer.new
    erb(:fight)
  end

  run! if app_file == $0
end
