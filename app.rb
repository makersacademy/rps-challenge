require 'sinatra/base'

class Rps < Sinatra::Base

  get '/paper' do
    erb :index
  end

  run! if app_file == $0
end
