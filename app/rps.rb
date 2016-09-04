require 'sinatra/base'
require './lib/player'
require './lib/computer'

class RPS < Sinatra::Base

enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    $player = Player.new(params[:name])
    redirect '/choose'
  end

  get '/choose' do
    @player = $player
    erb :choice
  end

  post '/weapon' do
    $computer = Computer.new
    @computer = $computer
    @player = $player
    @weapon = @player.weapon_choice(params[:weapon])
    @comp_weapon = @computer.weapon_choice.capitalize
    erb :result
  end


  run! if app_file == $0

end
