require 'sinatra'

class Game < Sinatra::Base 

    set :session_secret, 'super secret'  

    enable :sessions

    get '/' do
        
        erb :index
    end 

    post '/name' do
        session[:name] = params[:name] 

        redirect '/play'
    end  

    get '/play' do
        @name = session[:name] 
        erb :game 
    end    

    post '/play_game' do
        session[:choice] = params[:choice] 

        redirect '/game_outcome'
    end  

    get '/game_outcome' do 
        
        value = session[:choice]    

        @name = session[:name] 

        computer = ["Rock", "Papaer", "Scissors"].shuffle.first 

        if value == "Rock" && computer == "Scissors" ||  value == "Scissors" && computer == "Paper" || value == "Paper" && computer == "Rock"  
            @meg = "#{ @name.capitalize } Winnes"
        elsif computer == "Rock" && value != "Rock" ||  computer == "Scissors" && value == "Paper" || computer == "Paper" && value == "Rock"
            @meg = "Computer Winnes"
        else  value == computer 
            @meg = "Draw!"
        end
        erb :outcome
    end
end 