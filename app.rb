require 'sinatra/base'

class Rps < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/play' do
     @name1 = params[:player_1]
     erb :play
  end

  post '/winner' do
    @choice = params[:rps] 
    erb :winner
  end

run! if app_file == $0
end
