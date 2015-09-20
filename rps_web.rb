require 'sinatra/base'

class RPS_Challenge < Sinatra::Base

  set :views, proc { File.join(root, '.', 'views') }

  enable :sessions

  get '/' do
    @name = session[:name]
    erb :index
  end

  post '/' do
    redirect ('/') if params[:name].to_s == ""
    session[:name] = params[:name]
    redirect ('/')
  end

  post '/play_game' do
    erb :play_game
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
