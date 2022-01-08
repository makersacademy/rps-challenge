require 'sinatra/base'
require 'sinatra/reloader'

 class MyApp < Sinatra::Base 
    enable :sessions
    configure :development do
        register Sinatra::Reloader 
    end 

    get '/' do
        erb :index
    end 

    post '/names' do 
        session[:player_1_name] = params[:player_1_name]
        redirect '/play'
    end 

    get '/play' do
        @player_1_name = session[:player_1_name]
        erb :play
    end
    
    run! if app_file == $0
end 