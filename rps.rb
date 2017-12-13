require 'sinatra/base'
require './lib/player'
require './lib/game'
require './lib/computer'

class Rps < Sinatra::Base

  enable :sessions

  helpers do
    def new_game
      Game.start(Game.new(Player.new(params[:name]), Computer.new))
    end
  end

  before do
    @game = Game.read
  end

  get '/' do
    erb(:index)
  end

  post '/name' do
    redirect '/' if params[:name].empty?
    new_game
    redirect '/play'
  end

  get '/play' do
    @p1name = @game.player1.name.upcase
    erb(:play)
  end

  post '/choice' do
    @game.player1.select(params[:choice])
    redirect '/result'
  end

  get '/result' do
    @game.player2.select
    @p1choice = @game.player1.choice
    @comchoice = @game.player2.choice
    @result = @game.result
    erb(:result)
  end

  get '/multiplayer' do
    "Multiplayer! It's on!"
  end

end
