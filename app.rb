require "sinatra/base"
require_relative "./lib/game.rb"


class RPS < Sinatra::Base
enable :sessions
set :session_secret, "sessionkey"

  get "/" do
    erb(:index)
  end

  post "/name" do
    session[:game] = Game.new(params[:player_one_name])
    redirect "/play"

  end

  get "/play" do
    @player_one_name = session[:game].player
    erb(:play)
  end

  get "/play_again" do
    @player_one_name = session[:game].player
    erb(:play_again)
  end

  post "/challenge" do
    @game = session[:game]
    session[:choice] = params[:choice]
    @name = @game.player
    @computer_choice = @game.computer.select_hand
    @winner = @game.winner(params[:choice])
    erb(:challenge)
  end


# Start the server if App is executed directly via Ruby
run! if app_file == $0

end
