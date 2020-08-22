require "sinatra/base"
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
    erb :options
  end

  post "/player_choice" do
    @player_1 = @game.player_1
    @player_1.round_choice(params[:option])
    @game.player_2.round_choice
    redirect "/options"
  end

  get "/battle" do 
    @winner = @game.winner(@game.player_1, @game.player_2)
    erb :battle
  end

  get "/play_again" do 
    @game.player_2.round_choice
    redirect "/options"
  end

  get "/multyplay" do 
    erb :multyplay
  end

  post "/start_multy_game" do 
    player_1 = Player.new(params[:Player_1])
    player_2 = Player.new(params[:Player_2])
    @game = Game.create(player_1,player_2)
    redirect "/options"
  end

  post "/player_1_option" do 
    @player_1 = @game.player_1
    @player_1.round_choice(params[:option])
    redirect "/options"
  end

  get "/play_again_multy" do 
    @game.player_1.round_choice(nil)
    @game.player_2.round_choice(nil)
    redirect "/switch_turn"
  end
  
  get "/switch_turn" do
    @game.switch_turn
    erb :switch_turn
  end

  post "/player_2_option" do 
    @player_2 = @game.player_2
    @player_2.round_choice(params[:option])
    redirect "/options"
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
