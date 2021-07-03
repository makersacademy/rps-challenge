 require 'sinatra/base'
require './lib/game'

class RPS < Sinatra::Base
    enable :sessions

    get '/' do 
        erb :index
    end 

    get '/names' do
        session[:player_1] = Game.new(params[:player_1])
        session[:player_2] = Game.new(params[:player_2])
        redirect '/choice'
    end 

    get'/choice' do
        session[:player1_choice] = session[:player_1] 
        session[:player2_choice] = session[:player_2]
        erb :choice
    end 

    get '/confirm' do
       session[:score] = Game.new(session[:player1_choice]) 
       erb :confirm


   get '/choose' do 
    @game.palyer1_choice(params[:choice])
    erb @game.result
    end 

    # start the server if ruby file executed directory 
     run! if app_file == $0


   get 'player_chooses_rock' do

    redirect '/play'

   end 
   
   get 'player_chooses_paper' do
   
    redirect '/play'

  end 

  get 'player_chooses_scissors' do

    redirect '/play'

  end 

end 
end 

