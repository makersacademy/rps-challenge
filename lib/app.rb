require 'sinatra/base'

class RPS < Sinatra::Base

  get '/' do
    erb :homepage
  end

  post '/enter-name' do
    erb :enter_name
  end

  run! if app_file == $0
end
