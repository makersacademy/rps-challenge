require "sinatra"
require 'sinatra/base'
require "./lib/player.rb"
# require "lib/game"
class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player = Player.new(params[:player_1_name])
    redirect('/play')
  end

  get '/play' do
    @player = $player
    erb(:play)
  end

  run! if app_file == $PROGRAM_NAME
end
