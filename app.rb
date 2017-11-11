require 'sinatra/base'

class Rps < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/play' do
    erb(:play)
  end

  run if app_file == $0
end
