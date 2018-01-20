require 'sinatra/base'
require './lib/game'
require './lib/computer'
require './lib/player'

class RockPaperScissors < Sinatra::Base

  enable :sessions

  run! if app_file == $0

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player = Player.new(params[:player_name])
    $game = Game.new($player)
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

  post '/attack' do
    $game.choose_weapon(params[:weapon])
    $game.make_computer_choose
    $result = $game.result
    redirect('/outcome')
  end

  get '/outcome' do
    erb(:outcome)
  end

end
