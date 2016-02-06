require 'sinatra/base'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/set_name' do
    session[:player_name] = params[:player_name]
    redirect '/match'
  end

  get '/match' do
    @name = session[:player_name]
    erb(:match)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
