require 'sinatra/base'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    session[:name] = params[:name]
    redirect '/play'
  end

  get '/play' do
    @name = session[:name]
    @player_choice = session[:player_choice]
    erb(:play)
  end

  post '/play' do
    session[:player_choice] = params[:player_choice]
    redirect '/play'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
