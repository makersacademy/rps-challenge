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
        $player_1 = Player.new(params[:player_1_name])
        redirect '/play'
    end 

    get '/play' do
        @player_1_name = $player_1.name
        erb :play
    end

    
    run! if app_file == $0
end 