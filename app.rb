require 'sinatra/base'

class RPS < Sinatra::Base
    enable :sessions

    get "/" do
      erb :index
    end

    post "/name" do
        session[:name] = params[:name]
        redirect "/play"
    end

    get "/play" do
        @name = session[:name]
        erb :play
    end

# start the server if the ruby file is executed directly
    run! if app_file == $0
end