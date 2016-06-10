require 'sinatra/base'

class RPS < Sinatra::Base
  get '/' do
    erb(:index)
  end

  post '/start' do
    @name = params[:username]
    erb(:choices)
  end

  run! if app_file == $0
end
