require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
    get '/' do
       erb (:homepage)
    end


enable :sessions

    post '/save-name' do
        session[:firstname] = params[:firstname]
        redirect '/display-name'
    end

    get '/display-name' do
        @name = session[:firstname]
        erb (:pre_game)
    end

    run! if app_file == $0
end
