require 'sinatra/base'

# Creating our own subclass of Sinatra::Base - Modular application style.
class RPS < Sinatra::Base
  enable :sessions

  # Defining 'root' route
  get '/' do
    erb(:index)
  end

  post '/name' do
    # Extrating values in param hash to session hash.
    session[:player_1_name] = params[:player_1_name]
    # Redirect to '/play' route transferring responsibility of rendering.
    redirect '/play'
  end

  get '/play' do
    # Storing values held in session hash to instance variables.
    @player_1_name = session[:player_1_name]
    erb(:play)
  end

  # run! starts a server.
  # Only start a server if the file has been executed directly with __FILE__
  # being the current file and $0 being the executed file.
  run! if app_file == $0
end
