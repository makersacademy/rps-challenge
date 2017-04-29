require 'sinatra/base'

class Game < Sinatra::Base
  get '/' do
    erb(:index)
  end

  post '/start' do
    erb(:start)
  end
end
