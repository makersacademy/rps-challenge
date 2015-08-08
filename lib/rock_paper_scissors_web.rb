require 'sinatra/base'

class RockPaperScissors < Sinatra::Base

  enable :sessions
  set :views, proc { File.join(root, '..', 'views') }

  get '/' do
    erb :homepage
  end

  post '/' do
    session[:mode] = params[:mode]
    redirect 'single_player' if session[:mode] == 'singleplayer'
  end

  get '/single_player' do
    erb :name
  end

  post '/single_player' do
    session[:name] = params[:name]
    @name = session[:name]
    redirect '/single_player' if @name == ''
    redirect '/single_gameplay'
  end

  get '/single_gameplay' do
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
