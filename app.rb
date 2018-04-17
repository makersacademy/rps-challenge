require "sinatra/base"
require "./lib/player.rb"
require "./lib/game.rb"
require "./lib/computer.rb"

class Rps < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    @player_name = params[:player_name]
    $game = Game.new(@player_name)
    @computer = $game.computer.computer_choice
    erb :play
  end

  post '/name' do
    @player = $game.player.name
    redirect '/play'
  end

  get '/play' do
    @choice = params[:choice]
    @player = $game.player.name
    erb(:result)
  end

  post '/result' do
    @choice = params[:choice]
    @player = $game.player.name
    @computer = $game.computer.computer_choice
    @result = $game.match(@choice, @computer)
    erb(:result)
  end

  run! if app_file == $0

end
