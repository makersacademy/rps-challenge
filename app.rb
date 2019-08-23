require 'sinatra/base'

class Mama < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  get '/play' do
    @player_1_name = session[:player_1_name]
    @player_2_name = session[:player_2_name]
    erb :play
  end

  post '/names' do
    session[:player_1_name] = params[:player_1_name]
    session[:player_2_name] = params[:player_2_name]
    redirect '/action'
  end

  get '/action' do
    @action = session[:rock]
    @action = session[:paper]
    @action = session[:scissors]
    erb :action
  end

  post '/action' do
    session[:rock] = params[:rock]
    session[:paper] = params[:paper]
    session[:scissors] = params[:scissors]
    redirect '/action1'
  end

  get '/action1' do
    @action = session[:rock]
    @action = session[:paper]
    @action = session[:scissors]
    erb :action1
  end

  post '/action1' do
    session[:rock] = params[:rock]
    session[:paper] = params[:paper]
    session[:scissors] = params[:scissors]
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
