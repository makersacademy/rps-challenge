require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
  get '/' do
    'Hello RockPaperScissors!'
  end

  run! if app_file == $0
end
