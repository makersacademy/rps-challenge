require 'sinatra/base'
require './lib/player'
require './lib/game'

class RPS < Sinatra::Base

  enable :sessions

  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/register' do
    @gametype = params[:gametype]
    erb :register
  end

  post '/register-process' do
    gametype = params[:gametype]
    player1 = Player.new(params[:name], "human")
    if gametype == "Single player"
      player2_name, player2_type = "computer", "computer"
    else
      player2_name, player2_type = params[:name2], "human"
    end
    player2 = Player.new(player2_name, player2_type)
    @game = Game.create(player1, player2, gametype)
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/saveturn' do
    round = params[:round]
    roundchoice = params[:choice].downcase
    if round == "1"
      # p "choice a#{@game.player1.choice}"
      @game.update_choice(roundchoice, @game.player1)
      # p "choice b#{@game.player1.choice}"
    else
      # p "choice c#{@game.player2.choice}"
      @game.update_choice(roundchoice, @game.player2)
      # p "choice d#{@game.player2.choice}"
    end
    if @game.gametype == "Multiplayer" && round == "1"
      erb :play2
    else
      @game.update_choice(roundchoice, @game.player2)
      redirect '/result'
    end
  end

  get '/result' do
    erb :result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
