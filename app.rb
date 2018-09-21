require 'sinatra/base'

class Game < Sinatra::Base

  get '/' do
    'RPG game!'
  end

  # start the server if ruby file executed dierectly
  run! if app_file == $0

end
