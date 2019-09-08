require 'sinatra/base'

class Rps < Sinatra::Base

  get '/' do
    # "Testing infrastructure working!"
    erb :index
  end

  post '/name' do
    @player = params[:player]
    erb :name
  end

  run! if app_file == $0
end
