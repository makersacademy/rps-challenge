require 'sinatra/base'
require 'sinatra/reloader'
require_relative 'lib/player'
require_relative 'lib/computer'

class RockScissorsPaper < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    $player = Player.new(params[:player])
    $computer = Computer.new
    redirect '/play'
  end

  get '/play' do
    @player = $player
    erb :play
  end

  post '/attack' do
    @player = $player
    @computer = $computer
    $choice = @player.choose_attack(params[:choice])
    $comp_choice = @computer.attack
    redirect '/result'
  end

  get '/result' do
    @choice = $choice
    @comp_choice = $comp_choice
    erb :result
  end

  run! if app_file == $0
end
