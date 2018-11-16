require 'sinatra/base'

class Rps < Sinatra::Base

  get '/' do
    "Testing, testing, 1, 2, 3"
  end

run! if app_file == $0

end
