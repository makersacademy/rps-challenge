require "sinatra/base"
require "./lib/game.rb"
require "./lib/player.rb"

class Rpsgame < Sinatra::Base

  enable :sessions

  before do
    @game = Game.instance
  end

  get "/" do
    erb(:index)
  end

  post "/hold" do
    @player_1 = Player.new(params[:player_1])
    @player_2 = Player.new("computer")
    @game = Game.create(@player_1, @player_2)
    redirect "/interim"
  end

  get "/interim" do
    erb :hold
  end

  # to whoever reviews this - for some reason my code falls over here when
  # I load it in rackup - NoMethodError at /game
  # I'd appreciate any feedback on how to fix this please :)

  post "/game" do
    @player_1_choice = params[:options]
    @player_2_choice = @game.player_2.generate_choice
    @options = []
    @options << @player_1_choice
    @p2options = []
    @p2options << @player_2_choice
    erb :game
  end


  run! if app_file == $0
end
