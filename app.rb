require 'sinatra/base'
require_relative './lib/computer'
require_relative './lib/game'
require_relative './lib/player'

class RPS < Sinatra::Base
  enable :sessions
    set :session_secret, 'super secret'

  get '/' do
    erb :index
  end

  post '/name' do
    $player = Player.new(params[:player])
    redirect '/setup'
  end

  get '/setup' do
    @player = $player.name
    @player_score = $player.score
    erb :setup
  end

  get '/attack' do
    @player = $player.name
    @player_core = $player.score
    erb :attack
  end

  run! if app_file == $0
end
