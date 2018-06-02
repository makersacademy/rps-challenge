require 'sinatra/base'
require './lib/player'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    $player = Player.new(params[:name])
    redirect '/player'
  end

  get '/player' do
    @player = $player.name
    erb(:player)
  end

  get '/rock' do
    @player = $player
    @player.select_move("Rock")
    erb(:rock)
  end

  get '/paper' do
    @player = $player
    @player.select_move("Paper")
    erb(:paper)
  end

  get '/scissors' do
    @player = $player
    @player.select_move("Scissors")
    erb(:scissors)
  end

  run! if app_file == $0
end
