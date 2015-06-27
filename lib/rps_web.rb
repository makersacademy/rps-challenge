require 'sinatra/base'
require './lib/game'

class Rpsweb < Sinatra::Base
  set :views, proc { File.join(root, '..', 'views') }
  enable :sessions

  get '/' do
    @name = params[:name]
    session[:name] = @name
    if $game
      session[:playername] = "Player 2: #{@name}"
      @playernum = 2
    else
      session[:playername] = "Player 1: #{@name}"
      @playernum = 1
    end
    erb :index
  end

  get '/start' do
    p session[:playername]
    @playername = session[:playername]
    if @playername.include?("Player 2:")
      #do nothing
    else
      $game = Game.new(Player)
    end
    erb :start
  end

  post '/choose' do
    choice = params[:choice]
    if session[:playername].include?("Player 1:")
      $game.player1.choose(choice)
    else
      $game.player2.choose(choice)
    end
    redirect '/waiting_room'
  end

  get '/waiting_room' do
    p $game
    erb :waiting_room
  end

  get '/verdict' do
    p @verdict = $game.decider
    erb :verdict
  end

  run! if app_file == $0
end