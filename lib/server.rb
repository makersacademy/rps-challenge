require 'sinatra/base'

class RPS < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/action' do
    @name = params[:name]
    erb :action
  end
end
