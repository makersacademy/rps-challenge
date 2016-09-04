require 'sinatra/base'
require 'sinatra'
require './lib/game'

class RPSGame < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player = Player.new(params[:user_name])
    $computer = Computer.new
    $game = Game.new($player, $computer)
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

  post '/inplay' do
    $game.choose_weapon(params[:choice])
    $game.computer_choice
    redirect '/result'
  end

  get '/result' do
    $game.outcome
    erb(:result)
  end

  run! if app_file == $0
end
