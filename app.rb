require 'sinatra/base'
require './lib/game'
require './lib/score'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    Game.create(params[:player_1_name])
    redirect("/play")
  end

  before do
    @game = Game.instance
  end

  get "/play" do
    redirect("/final") if @game.win_reached
    @name = @game.player
    erb :play
  end

  post "/attacktype" do
    @game.attack_with(params[:attacktype])
    redirect "/attack"
  end

  get "/attack" do
    @attack = @game.chosen_attacks[:p1]
    erb :attack
  end

  get "/engage" do
    @game.computer_attack
    erb :engage
  end

  get "/result" do
    @computer_attack = @game.chosen_attacks[:p2]
    @winner = @game.result
    erb :result
  end

  get "/final" do
    erb :final
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
