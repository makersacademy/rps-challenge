require 'sinatra/base'
require 'tilt/erb'
require './lib/computer'
require './lib/player'
require './lib/rockpaperscissors'
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
      @rps = "Rock"
    elsif params[:rps] == "Paper"
      @rps = "Paper"
    else
      @rps = "Scissors"
    end
    erb(:fight)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
