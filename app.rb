require 'sinatra'
require_relative 'lib/player'

class RockPaperScissors < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player = Player.new(params[:player])
    redirect '/play'
  end

  get '/play' do
    @player = $player.name
    erb(:play)
  end

  get '/result' do
    $game = Game.new
    @player = $player.name
    erb(:result)
  end

  run! if app_file == $0
end
