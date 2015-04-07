require 'sinatra/base'

class RPS < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/start' do
    @name = params[:name]
    erb :start
  end
end
