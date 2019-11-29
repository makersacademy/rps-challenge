
require 'sinatra/base'

class RPS < Sinatra::Base

  get "/" do
    erb(:form)
  end

  post '/name' do
    @name = params[:name]
    erb(:saved_name)
  end

run! if app_file == $0
end
