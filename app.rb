require "sinatra/base"
require "./lib/game"
require "./lib/player"

class Rock < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/save_name' do
    player = Player.new(params[:name])
    $game = Game.new(player)
    redirect "/lights"
  end

  get "/lights" do
    @game = $game
    erb(:lights)
  end

  post "/results" do
    @game = $game
    @game.player.action(params[:choice])
    @computer_choice = @game.move
    @result = @game.calculate
    erb(:end)
  end

end
