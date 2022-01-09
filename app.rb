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
        session[:player_name] = params[:player_1_name]
        redirect '/play'
    end 

    get '/play' do
        @turn = Turn.new(session)
        erb :play
    end

    post '/play' do
        session[:player_shape] = params[:shape]
        session[:opponent_shape] = Opponent.new.shape
        redirect '/play'
    end 

    run! if app_file == $0
end 