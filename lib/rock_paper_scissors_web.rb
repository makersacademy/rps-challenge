require 'sinatra/base'

class Rps_challenge < Sinatra::Base
  set :views, Proc.new { File.join(root, "..", "views")}

  get '/' do
    'Hello rps-challenge!'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
