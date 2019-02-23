require 'sinatra/base'

class Rps < Sinatra::Base

  get '/' do
    erb :welcome
  end

  !run if app_file == $0

end
