require 'sinatra/base'

class RPS<Sinatra::Base

  get '/' do
    'ROCK PAPER SCISSORS!'
  end

  run! if app_file == $0

end
