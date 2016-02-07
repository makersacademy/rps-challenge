require 'sinatra/base'
require_relative './lib/player.rb'
require_relative './lib/game.rb'


class RPSGame < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    player = Player.new(params[:name])
    $game = Game.new(player)
    redirect ('/start')
  end

  get '/start' do
    @player = $game.player
    erb :start
  end

  get '/play' do
    @player = $game.player
    erb :play
  end

  post '/summary' do
    @choice = params[:choice]
    player = $game.player
    player.send("choose_" + @choice)
    redirect('/summary')
  end

  get '/summary' do
    $game.ai_chooses
    @player = $game.player
    @machine = $game.ai
    @winner = $game.winner
    erb :summary
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
