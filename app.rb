require 'sinatra'
require './lib/player'

class RpsApp < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    p params
    $player = Player.new(params[:player])
    redirect '/play'
  end

  get '/play' do
    @player = $player
    erb(:play)
  end

  run! if app_file == $0

end
