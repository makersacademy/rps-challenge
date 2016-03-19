require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/game'

class RockPaperScissors < Sinatra::Base
  get '/' do
    erb(:index)
  end

  post '/name' do
    $player = Player.new(params[:name])
    $game = Game.new($player)
    redirect('/play')
  end

  get '/play' do
    @player_name = $player.name
    erb(:play)
  end

  post '/rock' do
    $game.make_player_choice('Rock')
    redirect('/results')
  end

  post '/paper' do
    $game.make_player_choice('Paper')
    redirect('/results')
  end

  post '/scissors' do
    $game.make_player_choice('Scissors')
    redirect('/results')
  end

  get '/results' do
    @player_name = $player.name
    @player_choice = $player.choice  
    erb(:results)
  end



  # start the server if ruby file executed directly
  run! if app_file == $0
end
