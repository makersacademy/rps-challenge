require 'sinatra/base'

class RPS < Sinatra::Base
  set :sessions, true

  get '/' do
    erb :index
  end

  post '/names' do
    'Dave vs. Mittens'
  end
end
