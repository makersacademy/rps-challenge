$VERBOSE=nil #remember to remove this before pulling
require 'sinatra/base'

class RPS < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/names' do
    $player_1 = params[:player_1]
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/round_1' do
    $action = params[:weapon]
    p $action
    erb :round1
  end

  run! if app_file == $0
end
