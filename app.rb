require "sinatra"
require "sinatra/base"

set :session_secret, "supersecret"

require_relative "./lib/game"
require_relative "./lib/player"

class RPS < Sinatra::Base

  enable :sessions
  set :public_folder, File.dirname(__FILE__) + "/static"

  before do
    @game = Game.instance
  end

  get "/" do
    @content = erb(:index)
    erb(:template)
  end

  post "/startgame" do
    Game.create(Player.new(params[:player_name]))
    redirect "/play"
  end

  get "/play" do
    @content = erb(:play)
    erb(:template)
  end

  post "/move" do
    @game.player.move = params[:player_move]
    # process computer's move
    redirect "/result"
  end

  get "/result" do
    @player_move = session[:player_move]
    @content = erb(:result)
    erb(:template)
  end

  # start the server only if the ruby file is executed directly
  run! if app_file == $0
end
