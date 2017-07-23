require 'sinatra/base'

class RpsWeb < Sinatra::Base

  run! if app_file == $0

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1_name])
    redirect '/play'
  end

  get '/play' do
    @player_1_name = $player_1.name
    erb :play
  end

end
