require 'sinatra/base'
require_relative './player'
require_relative './computer'
require_relative './calc_result'

class RPS < Sinatra::Base

  get '/' do
    erb(:index)
  end

  # Sorry for the global variables! I know these are VERY BAD NEWS
  # I didn't manage to get my head around the Singleton pattern this weekend.
  # Refactoring needed!

  post '/play' do
    $player = Player.new(params[:player_name], params[:weapon])
    $computer = Computer.new
    redirect 'result'
  end

  get '/result' do
    @player_name = $player.name
    @player_weapon = $player.weapon
    @comp_weapon = $computer.choose_weapon
    calculation = CalcResult.new(@player_weapon, @comp_weapon)
    @result = calculation.result
    erb(:result)
  end

  run! if app_file == $0

end
