require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
  get '/' do
    'Hello rps-challenge!'
  end














  run! if app_file == $0
end
