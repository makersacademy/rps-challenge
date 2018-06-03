require 'sinatra/base'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:player_name] = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    @player_name = session[:player_name]
    @option = session[:option]
    @cpu_option = session[:cpu_option]
    erb :play
  end

  post '/play' do
    session[:option] = params[:option]
    session[:cpu_option] = ['Rock','Paper','Scissors'].sample
    redirect '/play'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
