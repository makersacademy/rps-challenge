require 'sinatra/base'
require 'tilt/erb'
require './lib/player'
require './lib/game'

class RPS < Sinatra::Base
  enable :sessions

  before do
    @game = Game.instance
  end

  get '/' do
    erb(:index)
  end

  post '/play' do
    player = Player.new(params[:player].capitalize)
    @game = Game.new(player)
    redirect '/player'
  end

  get '/player' do
    @game
    erb(:play)
  end

  get '/result' do
    @game.player_rps(params[:rps].to_sym)
    @game.computer_rps
    redirect '/fight'
  end

  get '/fight' do
    @game
    @game.win_tie_loose
    @game.player.win if @game.result == "You win :)"
    @game.computer.win if @game.result == "Computer wins :("
    erb(:fight)
  end

  get '/restart' do
    @game.player.restart
    @game.computer.restart
    redirect '/player'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
