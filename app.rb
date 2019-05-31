require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
  get '/' do
    'Testing works'
  end

  run! if app_file == $0
end
