require 'sinatra/base'

class RPS < Sinatra::Base

  get '/' do
    "Start the game!"
  end


run! if app_file == $0

end
