require 'sinatra/base'
require_relative './player'
require_relative './computer'

class RPS < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/play' do
    $player = Player.new(params[:player_name], params[:weapon])
    $computer = Computer.new
    redirect 'result'
  end

  get '/result' do
    @player_name = $player.name
    @weapon = $player.weapon
    @comp_weapon = $computer.choose_weapon
    erb(:result)
  end

  run! if app_file == $0

end
