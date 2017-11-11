require 'sinatra/base'
require './lib/player'
require './lib/game'
require './lib/computer'

class Rps < Sinatra::Base

  enable :sessions
  get '/' do
    "Rock, Paper, Scissors!"
    erb(:index)
  end

  post '/name' do
    Game.start(Game.new(Player.new(params[:name]), Computer.new))
    redirect '/play'
  end

  get '/play' do
    @p1name = Game.read.player1.name.upcase
    erb(:play)
  end

end
