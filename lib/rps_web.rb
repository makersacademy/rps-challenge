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
    else
      session[:playername] = "Player 1: #{@name}"
    end
    erb :index
  end

  get '/start' do
    p session[:playername]
    @playername = session[:playername]
    if @playername.include?("Player 2:")
      session[:player] = $game.player2
      p session[:player]
    else
      $game = Game.new(Player)
      session[:player] = $game.player1
      p session[:player]
    end
    erb :start
  end

  post '/choose' do
    choice = params[:choice]
    player = session[:player]
    player.choose(choice)
    p session[:player]
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