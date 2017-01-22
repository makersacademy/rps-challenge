require 'sinatra/base'
require './lib/player.rb'
require './lib/rps_game.rb'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player = Player.new(params[:player_name])
    $computer_player = Player.new
    redirect '/play'
  end

  get '/play' do
    @player_name = $player.name
    @computer_name = $computer_player.name
    erb(:play)
  end

  post '/play' do
    $player.choose_weapon(params[:weapon])
    redirect '/results'
  end

  get '/results' do
    @player_weapon  = $player.weapon
    @computer_weapon = $computer_player.choose_weapon
    @result = RPSGame.new($player, $computer_player).play
    erb(:results_page)
  end

  get '/game_over' do
    erb(:game_over)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
