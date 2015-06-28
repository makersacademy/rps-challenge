require 'sinatra/base'
require_relative 'game'

class RPS < Sinatra::Base

	 set :views, proc { File.join(root, '..','views') }

  # start the server if ruby file executed directly
  run! if app_file == $0

end