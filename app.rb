require 'sinatra/base'
require './lib/game.rb'
require './lib/player.rb'
require './lib/computer.rb'

class Rps < Sinatra::Base

  get '/' do
    erb(:intro)
  end

  post '/name' do
    player = Player.new(params[:player])
    computer = Computer.new
    $game = Game.new(player, computer)
    @game = $game
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb(:play)
  end

  get '/result' do
    $game.computer.pick
    @game = $game
    erb(:result)
  end

  post '/rock' do
    $game.player.rock
    redirect '/result'
  end

  post '/paper' do
    $game.player.paper
    redirect '/result'
  end

  post '/scissors' do
    $game.player.scissors
    redirect '/result'
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
