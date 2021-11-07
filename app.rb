require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'
require './lib/computer'

class RockPaperScissors < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player_1 = Player.new(params["player_1_name"])
    redirect '/play'
  end

  get '/play' do
    @player_1 = $player_1
    $computer = Computer.new
    @computer = $computer
    erb(:play)
  end

  get '/choose' do
    @player_1 = $player_1
    erb(:choose)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
