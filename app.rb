require 'sinatra/base'
require 'sinatra'
require './lib/game'

class RPSGame < Sinatra::Base

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
    @game = $game
    erb(:play)
  end

  post '/result' do
    $player
    erb(:result)
  end

  run! if app_file == $0
end
