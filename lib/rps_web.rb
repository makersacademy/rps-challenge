require 'sinatra/base'

class Rps_Challenge < Sinatra::Base

  set :public_folder, proc { File.join(root, '..', "public") }
  set :views, proc { File.join(root, '..', 'views') }

  get '/' do
    'Hello rps-challenge!'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
