require 'sinatra/base'

class RPS < Sinatra::Base
  get '/' do
    erb :enter_name
  end

  post '/name' do
    # => this should now create a game and assign a name to it. 
    erb :game
  end



  # start the server if ruby file executed directly
  run! if app_file == $0
end
