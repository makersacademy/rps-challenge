require 'sinatra/base'
require 'tilt/erb'
require './lib/computer'
require './lib/player'
require './lib/rockpaperscissors'
require './lib/game'
require './lib/game_choice'

class RPS < Sinatra::Base
  enable :sessions

  before do
    @game = Game.instance
    @game_rps = GameChoice.instance
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
    @game_rps = GameChoice.new(params[:rps].to_sym)
    redirect '/fight'
  end

  get '/fight' do
    @game
    @game_rps
    @game_rps.win_tie_loose
    erb(:fight)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
