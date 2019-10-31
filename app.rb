require 'sinatra/base'
require './src/Player'

class Game < Sinatra::Base
    enable :sessions

    get '/' do 
        erb(:home)
    end
    
    post "/game_setup" do
        session[:player] = Player.new(params[:name])
        redirect '/play'
    end

    get '/play' do
        @player = session[:player]
        erb(:play)
    end

    post '/result' do
        erb(:result)
    end

    run! if app_file == $0
end 