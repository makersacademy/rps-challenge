require 'sinatra/base'

class Rps < Sinatra::Base

  get '/' do
      erb :index
  end

  get '/players1' do
    erb :players1
  end

  get '/players2' do
    erb :players2
  end

end
