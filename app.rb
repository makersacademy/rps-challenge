require 'sinatra/base'

class Rps < Sinatra::Base

  enable :sessions

  get '/' do
    "Nick RPS challenge"
  end

  run! if app_file == $0

end
