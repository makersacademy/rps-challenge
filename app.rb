require 'sinatra/base'

class RPSapp < Sinatra::Base

  enable :sessions

  get '/' do
    'Testing'
  end

  run! if app_file == $0

end
