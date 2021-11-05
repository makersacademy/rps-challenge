require 'sinatra/base'
require 'sinatra/reloader'
require_relative 'lib/player'

class RPS < Sinatra::Base
  register Sinatra::Reloader
  set :sessions, true

  get '/' do
    erb :index
  end

  post '/play' do
    $player = Player.new(params[:name])
    $choice = $player.chosen_hand(params[:choice])
    erb :play
  end

  post '/result' do
    erb :result
  end

  run! if app_file == $0
end
