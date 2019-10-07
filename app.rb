require 'sinatra/base'
require_relative './lib/game'
require_relative './lib/player'

class RPS < Sinatra::Base
  enable :sessions

  before do
    @game = session[:game]
  end

  get "/" do
    erb :home
  end

  post "/name" do
    session[:name1] = params[:name]
    redirect "/game"
  end

  get "/game" do
    session[:game] = Game.new(Player.new(session[:name1]), Player.new("CPU"))
    @game = session[:game]
    erb :game
  end

  post "/game" do
    @game.player1.make_move(params[:move].to_sym)
    redirect "/outcome"
  end

  get "/outcome" do
    @winner = @game.winner
    erb :outcome
  end
  
  run! if app_file == $0

end
