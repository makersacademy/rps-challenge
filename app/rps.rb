require 'sinatra/base'

class RPS < Sinatra::Base

  get '/' do
    erb (:register)
  end

  get '/play' do
    @player_name = params[:name]
    erb :play
  end

  get '/go' do
    p params
  end
end
