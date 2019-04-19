require 'sinatra/base'
require './lib/player'

class RPS < Sinatra::Base
  enable :sessions

  before do
    @computer = Computer.new
  end

  get '/' do
    erb :index
  end

  post '/names' do
    $player = Player.new(params[:player_name])
    redirect '/play'
  end

  get '/play' do
    @player = $player
    erb :play
  end

  post '/choice' do

  end

  run! if app_file == $0
end
