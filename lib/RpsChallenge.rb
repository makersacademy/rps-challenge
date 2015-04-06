require 'sinatra/base'

class RpsChallenge < Sinatra::Base
  get '/' do
    'Hello RpsChallenge!'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
