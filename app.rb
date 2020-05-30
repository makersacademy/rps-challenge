require 'sinatra/base'
require 'sinatra'

class Rps < Sinatra::Base

  enable :sessions

  get '/' do
    "testing homespgae, please work!"
  end

  run! if app_file == $0

end
