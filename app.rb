require 'sinatra/base'

class Rockpaperscissors < Sinatra::Base

  get '/' do
    "Testing infrastructure working!"
  end

  run! if app_file == $0

end
