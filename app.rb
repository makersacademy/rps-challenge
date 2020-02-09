require 'sinatra/base'
require './lib/game'
class RockPaperScissors < Sinatra::Base
    enable :sessions
    get '/' do
        erb :index
    end

    post '/names' do
        session[:player_name] = params[:player_name]
        redirect '/play'
    end

    get '/play' do
        @player_name = session[:player_name]
        erb :play
    end

    get '/game' do
        @player_choice = params[:weapon_choice]
        @game = Game.new
        @computer_weapon = @game.computer_choice
        @player_weapon = @game.player_choice(@player_choice)
        @result = @game.result
        erb :game
    end

    run! if app_file == $0
end