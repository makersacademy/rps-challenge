require 'sinatra/base'
require "./lib/player"

class RockPaperScissors < Sinatra::Base
  set :port, 5678

  get '/' do
    erb :index
  end

  get '/name' do
    erb :name
  end

  post '/name' do
    player = Player.new(params[:name])
    computer = Player.new("Computer")
    $game = Game.new(player, computer)
    redirect "/game"
  end

  get '/game' do
    @game = $game
    erb :game
  end

  post '/choice' do
    $game.player_one.choose(params[:choice])
    $game.player_two.choose_random
    redirect "/result"
  end

  get '/result' do
    @game = $game
    erb :result
  end

  run! if app_file == $0

end
