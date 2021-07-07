require "sinatra"
require "./lib/player"
require "./lib/computer"
require "./lib/game"

class RPS < Sinatra::Base
  enable :sessions

  get "/" do
    erb(:index)
  end

  post "/play" do
    @game = Game.create(Player.new(params[:name]), Computer.new)
    redirect "/play"
  end

  before do
    @game = Game.instance
  end

  get "/play" do
    erb(:play)
  end

  post "/result" do
    @game.computer.choose
    @game.player.choose(params)
    @game.who_wins
    redirect "/result"
  end

  get "/result" do
    erb(:result)
end

  run! if app_file == $0
end
