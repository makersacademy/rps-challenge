require 'sinatra/base'
require 'sinatra'

class RPSWeb < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/name' do
    @player_name = params[:player_name]
  erb :player
end






run! if app_file == $0
end
