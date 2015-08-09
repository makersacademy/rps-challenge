require 'sinatra/base'

class RoshamboWeb < Sinatra::Base
  set :views, proc { File.join(root, '..', 'views') }

  get '/' do
    erb :index
  end

  get '/welcome' do
    @player_name = params[:player_name]
    erb :welcome
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
