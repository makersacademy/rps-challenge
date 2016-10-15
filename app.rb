require 'sinatra/base'
require 'haml'
require 'rspec'

class RPS < Sinatra::Base
  get '/' do
    haml :index
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
