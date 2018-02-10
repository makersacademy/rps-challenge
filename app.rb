require 'sinatra/base'

class RpsGame < Sinatra::Base

  get '/' do
    erb(:index)
  end

  get '/play' do
    erb(:play)
  end

end
