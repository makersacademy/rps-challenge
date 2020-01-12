require 'sinatra/base'

class RPS < Sinatra::Base
  get '/' do
    erb :index
  end
  run! if app_file == $0

  post '/enter_name' do
    @marketeer_name = params[:marketeer_name]
    erb :name_homepage
  end
end
