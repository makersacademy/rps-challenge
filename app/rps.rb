require 'sinatra/base'
require './lib/player'
require './lib/computer'


class RPS < Sinatra::Base

enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    player = Player.new(params[:name])
    $player = player
    redirect '/choose'
  end

  get '/choose' do
    @player = $player
    erb :choose
  end

  post '/weapon' do
    @player = $player
    @weapon = @player.weapon_choice(params[:weapon])
    erb :game
  end


  run! if app_file == $0

end
