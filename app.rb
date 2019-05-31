require 'sinatra/base'
require './lib/rock_paper_scissors_game'
require './lib/player'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    player = Player.new(params['enter-name'])
    @game = RockPaperScissorsGame.create(player)
    redirect '/rps'
  end

  get '/rps' do
    @game = RockPaperScissorsGame.instance
    erb :rps
  end

  post '/winner' do
    @game = RockPaperScissorsGame.instance
    @game.player.pick_weapon(params['weapon'])
    @game.play
    erb :winner
  end

  run! if app_file == $0
end
