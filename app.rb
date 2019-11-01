require 'sinatra/base'
require './lib/game'

class RockPaperScissors < Sinatra::Base
    
    enable :sessions

    get '/' do
        erb(:home)
    end

    post '/enter-name' do
        session[:game] = Game.new(params[:name])
        redirect('/play')
    end

    get '/play' do 
        @name = session[:game].player_name
        erb(:game)
    end

    post '/take_go' do 
        session[:game].take_go(params[:go_choice]) 
        session[:game].computer_take_go
        redirect('/result')
    end

    get '/result' do 
        @player_move = session[:game].player_move
        @computer_move = session[:game].computer_move
        @result = session[:game].result
        erb(:result)
    end
end