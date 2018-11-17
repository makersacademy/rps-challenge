require 'sinatra/base'
require_relative "./lib/player.rb"
require_relative "./lib/game.rb"

class RPSWeb < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    p params
    player_1 = Player.new(params[:player_name])
    player_2 = Player.new("Computer")
    @game = Game.new(player_1)
    @game.add_player(player_2)

    redirect to('/play')
  end

  get '/play' do
    erb(:play)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
