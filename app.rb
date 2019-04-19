require 'sinatra/base'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    @name = params[:name]
    erb(:play)
  end

  get '/play' do
    p params
    @name = params[:name]
    erb(:play)
  end

end
