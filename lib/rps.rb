require 'sinatra/base'

class RPSchallenge < Sinatra::Base
  
set :views, proc { File.join(root, '..', 'views') }

  get '/' do
    @name = params[:name]
    erb :index
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
