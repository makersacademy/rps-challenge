require 'sinatra/base'
require './lib/player'
require './lib/computer'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/startpage' do
    $player = Player.new(params[:player_name])
    $computer = Computer.new
    redirect '/play'
  end

  get '/play' do
    @player = $player.playername
    erb :play
  end

  post '/rock' do
    $player.rock
    redirect '/outcome'
  end

  post '/scissors' do
    $player.scissors
    redirect '/outcome'
  end

  post '/paper' do
    $player.paper
    redirect '/outcome'
  end

  get '/outcome' do
    $computer.enemy
    erb :outcome
  end

end
