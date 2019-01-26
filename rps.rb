require 'sinatra/base'

class Rps < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/choose' do
    @name = params[:name]
    erb(:choose)
  end

end
