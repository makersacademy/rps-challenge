require 'sinatra/base'

class Rps < Sinatra::Base
  set :sessions, true

  get '/' do
    erb(:index)
  end

  get '/play' do
    @name = params[:player]
    erb(:play)
  end

end
