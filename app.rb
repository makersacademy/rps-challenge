require 'sinatra/base'

class RPS < Sinatra::Base
  get '/' do
    erb(:index)
  end

  post '/play' do
    "Here we play the game"
  end

  run! if app_file == $0
end
