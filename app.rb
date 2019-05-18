require 'sinatra/base'

class RPS < Sinatra::Base

  get '/' do
    erb :enter_name
  end

  post '/welcome' do
    @name = params[:name]
    erb :welcome
  end

  get '/game' do
    erb :game
  end
end
