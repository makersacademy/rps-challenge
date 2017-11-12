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
    redirect '/' if params[:name].empty?
    Game.start(Game.new(Player.new(params[:name]), Computer.new))
    redirect '/play'
  end

  get '/play' do
    @p1name = Game.read.player1.name.upcase
    erb(:play)
  end

  post '/choice' do
    Game.read.player1.select(params[:choice])
    redirect '/result'
  end

  get '/result' do
    Game.read.player2.select
    @p1choice = Game.read.player1.choice
    @comchoice = Game.read.player2.choice
    @result = Game.read.result
    erb(:result)
  end

end
