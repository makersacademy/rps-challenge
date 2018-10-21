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
    @resstr = ""
    @winners.each {|w| @resstr << w.get_name<< " " } if @winners
    erb :playrps
  rescue NoWinnerError => err
    @err = err
    erb :playrps
  end

  post '/play' do
    if params[:submit] == "submit"
      @game.start_round
      @game.player_plays(@game.players[0],params[:move1])
      @game.players[1].get_name == "Computer" ? @game.player_plays(@game.players[1],["rock","paper","scissors"].sample) : @game.player_plays(@game.players[1],params[:move2])
      redirect "/play"
    elsif params[:submit] == "finish"
      redirect "/complete"
    end
  end

  get "/complete" do
    @winners = @game.finish_game
    @resstr = ""
    @winners.each {|w| @resstr << w.get_name << " " } if @winners
    erb :complete
  rescue NoWinnerError => err
    @err = err
    erb :complete
  end

  run! if app_file==$0
end
