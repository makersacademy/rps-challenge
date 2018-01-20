require 'sinatra/base'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/play' do
    @name = params[:name]
    erb(:play)
  end

  post '/result' do
    @move = params[:move]
    erb(:result)
  end

end
