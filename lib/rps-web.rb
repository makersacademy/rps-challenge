require 'sinatra/base'

class RPSWeb < Sinatra::Base

set :views, proc { File.join(root, '..', 'views') }

  get '/' do
    erb:index
  end

  post '/' do
    @choice = params[:your_choice]
    p @choice
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
