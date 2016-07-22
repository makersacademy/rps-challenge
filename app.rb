require "sinatra/base"
require "./lib/player.rb"
require "./lib/game.rb"

class RPS < Sinatra::Base
  enable :sessions

  get "/" do
    erb(:index)
  end

  post "/name" do
    player = Player.new(params[:player_name])
    $game = Game.new(player)
    redirect "/play"
  end

  get "/play" do
    @game = $game
    erb(:play)
  end

  post "/option" do
    @option = params[:option]
    redirect "/result"
  end

  get "/result" do
    "You chose Rock!"
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
