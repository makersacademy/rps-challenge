require 'sinatra/base'

class RPS < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/options' do 
    @player_1_name = params[:player_1_name]
    erb :options
  end

  get '/options' do 
    erb :options
  end

  run! if app_file == $0
end


