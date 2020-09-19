require 'sinatra/base'
require './lib/game'


class RPS < Sinatra::Base

    enable :sessions
    
    get '/' do
    "Hello world!!!"
    erb :index
    end


    post '/name' do
     session[:name] = params[:name]
     @game = Game.create(params[:name]) #creating a new Game instance
     redirect '/play'
    end

    get '/play' do
        @player = session[:name]
        @game = Game.instance
        @choices = @game.show_choices #create a new varible with the choices
        erb :play
    end
    
    
    post '/choice' do
        @choice = params[:choice]
        erb :choice
    end





    run! if app_file == $0
end

