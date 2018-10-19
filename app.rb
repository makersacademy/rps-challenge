require "sinatra/base"
require "./lib/game.rb"

class RPSGame < Sinatra::Base
  enable :sessions

  before do
    @game = Game.instance
  end

  get "/" do
    erb(:getplayernumber)
  end

  post '/names' do
    @noofplayers = params[:noofplayers]
    redirect "/names"
  end

  get "/names" do
    @noofplayers = params[:noofplayers]
    erb :getplayernames
  end

  post '/players' do
    @game.assign_players([params[:player1],params[:player2]])
    redirect "/play"
  end

  get '/play' do
    erb :playrps
  end

  post '/play' do
    @game.player_plays()
    @game.player_plays()
    if params[:commit] == "Submit"
      redirect "/play"
    elsif params[:commit] == "Finish"
      redirect "/complete"
    end
  end

  get "/complete"
    erb :complete
  end
  run! if app_file==$0
end
