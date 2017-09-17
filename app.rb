require 'sinatra/base'

class Rps < Sinatra::Base
  get '/' do
    "ROCK PAPER SCISSORS!"
    'Testing infrastructure working'
  end
  run! if app_file == $0
end
