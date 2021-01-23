require 'sinatra/base'

class Game < Sinatra::Base
  get '/' do
  "Let the games begin!"
  end

  run! if app_file == $0
end
