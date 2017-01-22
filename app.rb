require 'sinatra/base'
require 'tilt/erb'
require './lib/computer'
require './lib/player'
require './lib/rockpaperscissors'
require './lib/game'
require './lib/game_choice'

class RPS < Sinatra::Base
  attr_reader :rps
  enable :sessions

  before do
    @game = Game.instance
    @game_rps = GameChoice.instance
  end

  get '/' do
    erb(:index)
  end

  post '/play' do
    player = Player.new(params[:player])
    @game = Game.new(player)
    redirect '/player'
  end

  get '/player' do
    @game
    erb(:play)
  end

  post '/result' do
    if params[:rps] == "Rock"
      rps = :Rock
      @game_rps = GameChoice.new(rps)
    elsif params[:rps] == "Paper"
      rps = :Paper
      @game_rps = GameChoice.new(rps)
    else
      rps = :Scissors
      @game_rps = GameChoice.new(rps)
    end
    redirect '/fight'
  end

  get '/fight' do
    @game
    @game_rps
    erb(:fight)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
