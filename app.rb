require 'sinatra/base'

class Rps < Sinatra::Base

  get '/' do
    erb :welcome
  end

  post '/fight' do
    @name = params[:name]
    erb :fight
  end

  !run if app_file == $0

end
