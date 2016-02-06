require 'sinatra/base'
require './lib/game.rb'
require './lib/player.rb'

class RPS < Sinatra::Base
  get '/' do
    erb(:index)
  end
  
  post '/play' do
    @player = Player.new(params[:name])
    $game = Game.new(@player)
    @game = $game
    erb(:play)
  end
  
  get '/game' do
    @game = $game
    @computer_choice = @game.choose
    @choice = params[:choice]
    erb(:game)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
