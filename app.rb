require 'sinatra/base'
require './src/Player'
require './src/Computer'


class Game < Sinatra::Base
    enable :sessions

    get '/' do 
        erb(:home)
    end
    
    post "/game_setup" do
        session[:player] = Player.new(params[:name])
        redirect '/play'
    end

    get '/play' do
        @player = session[:player]
        erb(:play)
    end

    post '/result' do
        @result = nil
        @player = session[:player]
        @player.MakeMove(params[:move])
        @computer = Computer.new
        case @player.CheckWon(@computer.Move)
            when true
                @result = "You have won!"
            when false 
                "You have lost"
            when "Draw"
                "It was a draw"
        end
        erb(:result)
    end

    run! if app_file == $0
end 