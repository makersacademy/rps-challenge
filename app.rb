require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
  get '/' do
    'Tests work!'
  end

  run! if app_file == $0
end
