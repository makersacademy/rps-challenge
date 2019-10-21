require 'sinatra/base'
require './lib/game'

class RPS < Sinatra::Base
    enable :sessions

    get '/' do
        erb(:index)
    end
 
    post '/name' do
        $player = params[:player] #set this instance variable to the name input in index.erb
        @player = $player
        redirect('/play')
    end

    get '/play' do
        erb(:play) 
    end

    post '/play' do
        $player_move = params[:move]
        redirect('/winner')
    end

    get '/winner' do
        @player_move = $player_move
        @player = $player

        @game = Game.new(@player)
        @computer_move = @game.computer_move

        erb(:winner)
    end
    
    #start server
    run! if app_file == $0
end