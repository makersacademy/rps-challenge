require 'sinatra/base'
require './lib/game'
require './lib/player'

class RPS < Sinatra::Base

  before do
    @game = Game.current
  end

  get "/" do
    erb(:sign_in)
  end

  post "/names" do
    p params
    player1 = Player.new(params[:player1])
    Game.start(player1)
    redirect '/play'
  end

  get "/play" do
    erb(:play)
  end

  post "/attack" do
    p params
    @game.attack((params[:acton]).to_sym)
    redirect '/result'
  end

  get "/result" do
    erb(:result)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
