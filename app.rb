require 'sinatra/base'
require './lib/game.rb'
require './lib/player.rb'


class RocPapSci < Sinatra::Base
  #set :public, Proc.new { File.join(root,"..", "public") }

  GAME = Game.new
  PLAYER = Player.new
  COMPUTER = Player.new("Computer")
  GAME.player1 = PLAYER
  GAME.player2 = COMPUTER
  THROWS = [:rock, :paper, :scissors]

  get '/' do
    erb :index
  end

  post '/register' do
    PLAYER.name = params[:name]
    session[:name] = PLAYER.name
    erb :play
  end

  post '/play' do
    session[:name]
    PLAYER.select(params[:choice])
    COMPUTER.select([:rock, :paper, :scissors].sample)
    erb :result
  end

  get '/play_again' do
    session[:name]
    erb :play
  end

end
