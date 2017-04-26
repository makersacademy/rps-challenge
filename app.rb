require 'sinatra/base'

class RPS < Sinatra::Application
  get '/' do
    erb :index
  end

  post '/name' do
    @name = params[:name]
    erb :play
  end

end
