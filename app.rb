require 'sinatra/base'
require_relative 'lib/game'
require_relative 'lib/player'
require_relative 'lib/computer_player'

class App < Sinatra::Base
  set :session_secret, 'super secret'
  enable :sessions

  get '/' do
    erb :index
  end

  post "/name" do
    set_player_name

    player1 = Player.new(name: session[:player_name])
    player2 = ComputerPlayer.new(name: "Hal")
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/result' do
    @player1 = Player.new(name: session[:player_name], choice: params[:choice].downcase)
    @player2 = ComputerPlayer.new(name: "Hal")

    @game = Game.new(players: [@player1, @player2])
    erb :result
  end

  def set_player_name
    session[:player_name] = params[:player_name]
  end
end
