require 'sinatra/base'
require 'sinatra'

class RPSWeb < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/name' do
    @player_name = params[:player_name]
  erb :play
end
end
