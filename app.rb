require 'sinatra/base'

class Rps < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/name' do
    @player_1 = params[:player_1]
    $weapon = params[:weapon]
    erb :player_1
  end

  get '/game' do
    erb :result
  end

  run! if app_file == $0

end
