 require 'sinatra/base'
require './lib/game'

class RPS < Sinatra::Base
    enable :sessions

    get '/' do 
        erb :index
    end 

    get '/names' do
        session[:player_1] = params[:player_1]
        session[:player_2] = params[:player_2]
        redirect '/choice'
    end 

    get'/choice' do
        session[:player1_choice] = session[:player_1] 
        session[:player2_choice] = session[:player_2]
        erb :choice
    end 

    get '/confirm' do
       session[:score] = session[:player1_choice] 
       @rock = Game.new("shubs")
       erb :play 


     get '/player move' do 
     
    end   

    end 
    # start the server if ruby file executed directory 
     run! if app_file == $0
end 

