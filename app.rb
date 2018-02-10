require 'sinatra/base'
require './lib/game.rb'
require './lib/player.rb'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    'Hello world'
    erb(:name)
  end

  post '/name' do
    player = Player.new(params[:player_name])
    Game.create(player)
    redirect '/play'
  end

  get '/play' do
    @player = Game.instance.player
    erb(:play)
  end

  run! if app_file == $0

end
