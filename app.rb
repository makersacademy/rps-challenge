require 'sinatra/base'
require 'sinatra/reloader'
require_relative './lib/player'

 class MyApp < Sinatra::Base 
    enable :sessions
    configure :development do
        register Sinatra::Reloader 
    end 

    get '/' do
        erb :index
    end 

    post '/names' do 
        session[:player_1_name]= params[:player_1_name]
        redirect '/play'
    end 

    get '/play' do
        @player_1_name = session[:player_1_name]
        @shape = session[:shape]
        @opponent_shape = session[:opponent_shape]
        erb :play
    end

    post '/play' do
        session[:shape] = params[:shape]
        session[:opponent_shape] = :rock
        redirect '/play'
    end 

    run! if app_file == $0
end 