require 'sinatra/base'
require './lib/game'


class RPS < Sinatra::Base

    enable :sessions
    
    get '/' do
    "Hello world!!!"
    erb :index #player register name
    end


    post '/name' do #sending name to server
        session[:name] = params[:name]
        @game = Game.create(params[:name]) #creating a new Game instance
        redirect '/play' 
    end

    get '/play' do
        @player = session[:name]
        @game = Game.instance
        @choices = @game.show_choices #create a new varible with the choices
        erb :play #player makes choice
    end
    
    
    post '/choice' do #send player choice to server
        @game = Game.instance
        @game.set_player_choice(params[:choice])
        @choice = params[:choice]
        redirect '/result'
        
    end

    get '/result' do
        @game = Game.instance
        @player = session[:name]
         @result = @game.get_result     
        if @result == "Draw"
            erb :draw #render draw page
        else
            erb :result #render result when someone wins
        end
    

    end




    run! if app_file == $0
end

