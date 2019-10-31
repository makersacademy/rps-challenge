require 'sinatra/base'
require './src/Player'
require './src/Computer'


class Game < Sinatra::Base
    enable :sessions
    @computer = Computer.new

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
        @player = session[:player]
        @player.MakeMove(params[:move])
        @player.HasWon(@computer.GenerateMove)
        erb(:result)
    end

    run! if app_file == $0
end 