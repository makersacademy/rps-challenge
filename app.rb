require 'sinatra/base'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    
  end

  run! if app_file == $PROGRAM_NAME
end
