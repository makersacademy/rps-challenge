require 'sinatra'

class RPS < Sinatra::Base
  get '/' do
    "Which brave soul wants to challenge me to an RPS battle?????"
  end
  run! if app_file == $0
end
