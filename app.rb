require 'sinatra/base'


class RPS_Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/VS' do
    $player_1 = params[:player_1]
    @player_1 = $player_1
    erb :versus
  end

  get '/play' do
    @player_1 = $player_1
    erb :play
  end

  run! if app_file == $0

end
