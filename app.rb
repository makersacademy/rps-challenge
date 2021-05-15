require 'sinatra/base'
require 'sinatra/reloader'

class RPS < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get '/' do
    erb :index
  end
  
  post '/name' do
    session[:name] = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    session[:choice] = params[:choice]
    erb :play
  end

  post "/play" do 
    redirect '/choice'
  end

  get '/choice' do
    @choice = session[:choice]
    erb :choice
  end 

  # start the server if ruby file executed directly
  run! if app_file == $0
end
