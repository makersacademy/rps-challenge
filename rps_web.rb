require 'sinatra/base'
require './lib/player'

class RPSWeb < Sinatra::Base

  enable :sessions

  get "/" do

    erb(:index)

  end

  post "/register" do
    @player1 = Player.new(params[:player1])
    @player2 = Player.new(params[:player2])
    p session[:player1] = @player1
    p session[:player2] = @player2

    redirect "/play"

  end

  get "/play" do
    p @player1 = session[:player1]
    p @player2 = session[:player2]
    erb(:play)

  end


  run! if app_file == $0
end
