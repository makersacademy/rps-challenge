require "sinatra/base"
require "./lib/game.rb"

class RPSGame < Sinatra::Base
  enable :sessions

  before do
    @game = Game.instance
  end

  get "/" do
    erb :noofplayers
  end

  post '/names' do
    @noofplayers = params[:noofplayers]
    redirect "/names"
  end

  get "/names" do
    @noofplayers = params[:noofplayers]
    erb :playernames
  end

  post '/players' do
    @game = Game.create()
    @game.assign_players([params[:player1],params[:player2]])
    redirect "/play"
  end

  get '/play' do
    @winners = @game.finish_round
    erb :playrps
  end

  post '/play' do
    if params[:commit] == "Submit"
      @game.start_round
      @game.player_plays(@game.players[0],params[:move1])
      @game.player_plays(@game.players[1],params[:move2])
      redirect "/play"
    elsif params[:commit] == "Finish"
      redirect "/complete"
    end
  end

  get "/complete" do
    @winners = @game.finish_game
  rescue
    @errormessage = "Its a tie - no winners no losers!"
    erb :complete
  end

  run! if app_file==$0
end
