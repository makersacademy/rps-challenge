require 'sinatra/base'

class RPS < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/css/style.css' do
    scss :styles
  end
end
