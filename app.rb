require 'sinatra/base'

class Rps < Sinatra::Base

  get '/' do
    "Rps begins"
  end

  !run if app_file == $0

end
