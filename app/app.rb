require 'sinatra/base'
require_relative '../lib/player.rb'

class RPS < Sinatra::Base

enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
  $player1 = Player.new(params[:player_name])
  redirect '/play'
  end

  get '/play' do
  p params
  @player_name = $player1.playername
  erb(:play)
  end

end