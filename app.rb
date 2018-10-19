require 'sinatra/base'

class Rps < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  get '/name' do
    erb :name
  end

  post '/player' do
    player = Player.new(params[:player_name])
    $game = Game.new(player)
    redirect '/play'
  end

  run! if app_file == $0
end
