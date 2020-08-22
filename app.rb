require "sinatra/base"
require "./lib/player"
require "./lib/bot"
require "./lib/game"

class App < Sinatra::Base

  before do 
    @game = Game.instance
  end

  get "/" do
    erb :index
  end

  post '/get_name' do 
    player = Player.new(params[:Player])
    bot = Bot.new("Computer")
    @game = Game.create(player, bot)
    redirect "/options"
  end

  get "/options" do
    @player = @game.player_1
    erb :options
  end

  post "/player_choice" do
    @player = @game.player_1
    @player.round_choice(params[:option])
    redirect "/options"
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
