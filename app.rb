require 'sinatra/base'
require_relative 'lib/battle.rb'
require_relative 'lib/player.rb'
require_relative 'lib/computer.rb'

class RockPaperScissors < Sinatra::Base
  enable :sessions
  get "/" do
    erb(:enterplayer)
  end
  post "/registername" do
    session['player1'] = Player.new(params['player1name'])
    if params['player2name'] == ""
      session['computerplayer'] = Computer.new
      redirect '/match'
    else
      session['player2'] = Player.new(params['player2name'])
      redirect '/2pmatch'
    end
  end
  get "/match" do
    @player2 = session['computerplayer']
    @player1 = session['player1']
    @winner = Battle.new(session['player1'],session['computerplayer']).winner
    erb(:match)
  end

  get "/2pmatch" do
    @player2 = session['player2']
    @player1 = session['player1']
    @winner = Battle.new(session['player1'],session['player2']).winner
    erb(:twoplayermatch)
  end

  post "/rock" do
    session['player1'].choose_move(:rock)
    session['computerplayer'].choose_move
    redirect '/match'
  end

  post "/paper" do
    session['player1'].choose_move(:paper)
    session['computerplayer'].choose_move
    redirect '/match'
  end
  post "/scissors" do
    session['player1'].choose_move(:scissors)
    session['computerplayer'].choose_move
    redirect '/match'
  end
  run! if app_file == $0
end
