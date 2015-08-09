require 'sinatra/base'
require_relative 'game'

class RpsWeb < Sinatra::Base
  set :views, proc { File.join(root, '..', 'views') }
  enable :sessions

  get '/' do
    erb :index
  end

  get '/registration' do
    erb :registration
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
