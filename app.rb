require 'sinatra/base'

class RPS < Sinatra::base
  get '/' do
    
  end

  run! if app_file == $0
end
