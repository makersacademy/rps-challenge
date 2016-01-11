require 'sinatra/base'
require './lib/player'
require './lib/game'

class App < Sinatra::Base


  get '/' do
    erb(:index)
  end

  post '/name' do
    player1 = Player.new(params[:name])
    $game = Game.new(player1)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb(:play)
  end

  get '/weapons' do
    @game = $game
    erb(:weapons)
  end

  post '/selection' do
    @game = $game
    @game.play_turn(params[:weapon1])
    redirect '/play'
  end


  # start the server if ruby file executed directly
  run! if app_file == $0

end
