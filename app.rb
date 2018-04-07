require 'sinatra'

class RockPaperScissors < Sinatra::Base
  get '/' do
    'Start RockPaperScissors!'
  end

  run! if app_file == $0
end
