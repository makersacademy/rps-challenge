require 'sinatra/base'
# require './lib/player'
# require './lib/game'
# require './lib/computer’

class RpS < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/names' do
    
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
