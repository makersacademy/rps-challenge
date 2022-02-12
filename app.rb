require 'sinatra/base'
require 'sinatra/reloader'

class Rps < Sinatra::Base
    configure :development do
      register Sinatra::Reloader
    end

get '/' do
  erb :index
end

post '/names' do
   @player1 = params[:player1]
  erb :view_name
end

    run! if app_file == $0
end