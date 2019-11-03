 require 'sinatra/base'


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
        @player1_choice = session[:player_1] 
        @player2_choice = session[:player_2]
        erb :choice
    end 

end 

