require 'sinatra/base'

class RockPaperScissors < Sinatra::Base

  get '/' do
    'Test'
  end

run! if app_file == $0
end
