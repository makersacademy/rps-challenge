require 'sinatra/base'

class GameApp < Sinatra::Base

  get '/' do
    'Testing infrastructure working!'
  end

  # start the server if ruby file executed dierectly
  run! if app_file == $0

end
