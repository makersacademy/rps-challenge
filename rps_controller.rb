require 'sinatra/base'

class RPS < Sinatra::Base
  get '/' do
    'Welcome To A Rock - Paper - Scissors Game!'
    erb :index
  end

  run! if app_file == $0
end
