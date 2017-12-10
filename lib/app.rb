require 'sinatra/base'
require 'pry'
require_relative './computer'
require_relative './game'
require_relative './player'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
     erb(:index)
   end

  post '/names' do
    $game = Game.new(Player.new(params[:player_name]), Computer.new)
    redirect to('/play')
  end

  get '/play' do
    @player = $game.player
    erb(:play)
  end

  post '/choice' do
    $game.player.choose(params[:player_choice])
    redirect to('/result')
  end

  get '/result' do
    @player = $game.player
    @computer = $game.computer
    @computer_choice = @computer.choose
    erb(:result)
  end

   run! if app_file == $0
end
