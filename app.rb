require 'sinatra/base'

class Rps < Sinatra::Base
  
  get '/' do
    erb :index
  end

  post '/play' do
    params[:name]
  end

end
