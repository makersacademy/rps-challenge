$VERBOSE=nil #remember to remove this before pulling
require 'sinatra/base'

class RPS < Sinatra::Base
attr_reader :player_1

  get '/' do
    erb :index
  end

  post '/names' do
    $player_1 = params[:player_1]
    redirect '/play'
  end

  get '/play' do
    p $player_1
    erb :play
  end

  run! if app_file == $0
end
