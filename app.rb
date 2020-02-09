require 'sinatra/base'
require './lib/computer'
require './lib/result'


class RockPaperScissors < Sinatra::Base

    get '/' do
        erb :index 
    end

    post '/challenger' do
        $player_name = params[:player1]
        player_choice = params[:choice]
        $player_choice = player_choice.capitalize
        $ai_choice = Computer.new.make_choice
        $result = Result.new($ai_choice, $player_choice, $player_name).run_game
        redirect '/preparation'
    end 

    get '/preparation' do
        
        erb :game
    end

    run! if app_file == $0 

end


