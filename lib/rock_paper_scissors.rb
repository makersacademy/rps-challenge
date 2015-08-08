require 'sinatra/base'

class RockPaperScissors < Sinatra::Base

  set :views, proc { File.join(root, '..', 'views') }
  dir = File.dirname(__FILE__)
  set :public_folder, "#{dir}/public"

  get '/' do
    erb :index
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
