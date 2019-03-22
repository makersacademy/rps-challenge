require 'sinatra/base'

class RPS < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/names' do
    @name = params[:name]
    erb :play
  end

  post '/play' do
    @move = params[:move]
    erb :result
  end

  run! if app_file == $0
end
