require 'sinatra/base'

# Creating our own subclass of Sinatra::Base - Modular application style.
class RPS < Sinatra::Base
  # Defining 'root' route
  get '/' do
    # 'Hello, are you ready to build RPS game? :-)'
    erb(:index)
  end

  post '/name' do
    # Extrating values in param hash to to instance variable.
    @player_1_name = params[:player_1_name]
  end

  # run! starts a server.
  # Only start a server if the file has been executed directly with __FILE__
  # being the current file and $0 being the executed file.
  run! if app_file == $0
end
