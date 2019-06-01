require 'sinatra/base'
require './lib/rock_paper_scissors_game'
require './lib/player'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    player_one = Player.new(params['enter-name-one'])
    player_two = Player.new(params['enter-name-two'])
    @game = RockPaperScissorsGame.create(player_one, player_two)
    redirect '/rps'
  end

  get '/rps' do
    @game = RockPaperScissorsGame.instance
    erb :rps
  end

  post '/winner' do
    @game = RockPaperScissorsGame.instance
    @game.player_one.pick_weapon(params['weapon_one'])
    @game.player_two.pick_weapon(params['weapon_two'])
    erb :winner
  end

  run! if app_file == $0
end
