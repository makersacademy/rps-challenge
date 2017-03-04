require 'sinatra/base'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/player' do
    session[:player_name] = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    @player = session[:player_name]
    erb(:play)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
