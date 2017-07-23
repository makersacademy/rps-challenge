require 'sinatra/base'
require_relative 'lib/player.rb'

class RockPaperScissors < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/player' do
    $player = Player.new(params[:player_name])
    redirect '/play'
  end

  get '/play' do
    $player
    erb :play
  end

  run! if app_file == $0

end
