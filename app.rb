require 'sinatra/base'
require 'sinatra'

class Battle < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/name' do
    @player_name = params[:player_name]
    erb :play
  end

#  get '/attack' do
#    erb :attack
#  end

  run! if app_file == $0
end
