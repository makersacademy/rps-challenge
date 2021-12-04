require 'sinatra/base'
require 'sinatra/reloader'


class Game < Sinatra::Base

    enable :sessions

    configure :development do
     register Sinatra::Reloader
    end

    run! if app_file == $0

    get '/' do
     erb :index
    end

    post '/choice' do
        session[:player_name] = params[:player_name]
        redirect '/choose_item'
    end

    get '/choose_item' do
        erb :choose_item
    end

end
