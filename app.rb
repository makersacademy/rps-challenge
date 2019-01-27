require 'sinatra/base'

class RockPaperScissors < Sinatra::Base

  get '/' do
    'Testing Homepage!'
  end

  run! if app_file == $0
end
