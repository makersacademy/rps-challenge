require 'sinatra/base'

class RSP < Sinatra::Base
  # enable :sessions
  enable :static

  set :views, proc { File.join(root, '..', 'views')}
  set :public_folder, Proc.new { File.join(root, '..', 'public') }



  get '/' do
    'Hello RSP!'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
