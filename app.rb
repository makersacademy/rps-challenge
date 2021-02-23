require 'sinatra/base'
require './lib/game'
require './lib/result'
require './lib/player'

class RPS < Sinatra::Base
enable :sessions

    # before do
    #     @result = Result.instance
    #     @player = Player.instance
    # end

    get '/' do
        'Please enter your name'
        erb :submit
    end

    post '/name' do
        session[:player_name] = params[:player_name]
        redirect '/game'
    end

    get '/game' do
        erb :game
    end

    post '/choices' do
        @game = Game.new(params[:player_choice])
        @cpu_choice = @game.cpu_choice
        @player_choice = @game.player_choice
        session[:player_choice] = @player_choice
        session[:cpu_choice] = @cpu_choice
        session[:result] = @game.result 
        redirect '/result'
    end      

    get '/result' do
        @player_choice = session[:player_choice]
        @cpu_choice = session[:cpu_choice] 
        @result = session[:result]
        erb :result
    end

end