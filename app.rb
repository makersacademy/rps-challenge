require 'sinatra/base'

class RPS < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/play' do 
    $name = params[:name]
    erb :play
  end 

  post '/result' do 
    @move = params[:move]
    erb :result
  end 

  run! if app_file == $0
end