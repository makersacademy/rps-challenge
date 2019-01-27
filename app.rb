require 'sinatra/base'

class RockPaperScissors < Sinatra::Base

  get '/' do
  end

  run! if app_file == $0
end
