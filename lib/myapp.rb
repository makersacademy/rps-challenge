require 'sinatra/base'

class MyApp < Sinatra::Base


    enable :sessions


  get '/' do
    erb :index
  end

  get '/play' do
  @player_name = params[:player_name]
  erb :play

  end


  run! if app_file == $0
end