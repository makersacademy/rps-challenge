require 'sinatra/base'
require './lib/player'
class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    $player = Player.new(params[:Player_name])
    redirect '/play'
  end

  get '/play' do
    @name = $player.name
    erb :play
  end

  run! if app_file == $0
end
