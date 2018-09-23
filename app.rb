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
    Game.create(player)
    redirect "/lights"
  end

  get "/lights" do
    @game = Game.instance
    erb(:lights)
  end

  post "/results" do
    @game = Game.instance
    @game.player.action(params[:choice])    
    @computer_choice = @game.move
    erb(:end)
  end

end
