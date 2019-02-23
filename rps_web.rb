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
    session[:player1] = @player1
    session[:player2] = @player2

    redirect "/play"

  end

  get "/play" do
    @player1 = session[:player1]
    @player2 = session[:player2]
    @play_result_confirmation = ""
    p "in play GET"
    erb(:play)

  end

  post "/play" do
    @player1 = session[:player1]
    @player2 = session[:player2]
    p "in play POST"
    p params
    @player1.choose_weapon(params[:weapon])
    @play_result_confirmation = "#{@player1.name} selected #{@player1.weapon}"
    erb(:play)

  end



  run! if app_file == $0
end
