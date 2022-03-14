require 'sinatra/base'
require 'sinatra/reloader'
require_relative 'lib/player'
require_relative 'lib/computer'
require_relative 'lib/game'

class RockScissorsPaper < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    player = Player.new(params[:player])
    computer = Computer.new
    $game = Game.new(player, computer)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end

  post '/attack' do
    @game = $game
    $choice = @game.player.choose_attack(params[:choice].downcase.to_sym)
    $comp_choice = @game.computer.attack
    redirect '/result'
  end

  get '/result' do
    @game = $game
    @choice = $choice
    @comp_choice = $comp_choice
    @game.game_over
    erb :result
  end

  post '/play_again' do
    redirect '/play'
  end

  post '/change_player' do
    redirect '/'
  end

  run! if app_file == $0
end
