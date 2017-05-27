require 'sinatra/base'
require './lib/game'
require './lib/player'
require './lib/computer'

class RPS < Sinatra::Base
  enable :sessions
  set :static, true

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player1 = Player.new(params[:player1_name])
    redirect '/play'
  end

  get '/play' do
    @player1 = $player1
    erb(:play)
  end

  get '/result' do
    erb(:result)
  end

end
