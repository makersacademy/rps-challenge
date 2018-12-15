require 'sinatra/base'

class Rps < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/game' do
    'Samson'
  end

  run! if app_file == $0
end
