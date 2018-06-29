require 'sinatra/base'

class RPS < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/registered' do
    # p params
    @player_1 = params[:player1_name]
    erb :registered
  end

  get '/server' do
    erb :server
  end

  run! if app_file == $0

end
