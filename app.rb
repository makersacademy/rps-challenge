require 'sinatra/base'
require './lib/game'
require './lib/result'
require './lib/player'

class RPS < Sinatra::Base

    before do
        @result = Result.instance
        @player = Player.instance
    end

    get '/' do
        'Please enter your name'
        erb :submit
    end

    post '/name' do
        player_name = params[:player_name]
        @player = Player.create(player_name)
        p @player
        redirect '/game'
    end

    get '/game' do
        erb :game
    end

    post '/choices' do
        @player_choice = Game.new(params[:player_choice])
        @cpu_choice = @player_choice.cpu_choice
        @result = Result.create(@player_choice.player_choice, @cpu_choice)
        redirect '/result'
    end      

    get '/result' do
        
        erb :result
    end

end