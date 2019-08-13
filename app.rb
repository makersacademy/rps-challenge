require 'sinatra/base'

class Rsp < Sinatra::Base


  get '/' do
    erb :index
  end

  post '/names' do
    @player_1_name = params[:player_1_name]
    @player_2_name = params[:player_2_name]
    erb :play
  end

 run! if app_file == $0
end 