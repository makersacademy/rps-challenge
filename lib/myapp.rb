require 'sinatra/base'

class MyApp < Sinatra::Base


    enable :sessions


  get '/' do
    erb :index
  end

  get '/names' do
  session[:player_name] = params[:player_name]
    redirect '/play'

  end

  get '/play' do
  @player_name = session[:player_name]
  erb :play

  end


  run! if app_file == $0
end