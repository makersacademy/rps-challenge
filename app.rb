require 'sinatra/base'
require 'sinatra/reloader'

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

    enable :session

    get '/' do
        erb :index
    end

    post '/names' do
        @name1 = params[:name1]
        erb :play
    end


    run! if app_file == $0
end