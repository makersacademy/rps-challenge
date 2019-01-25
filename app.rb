require 'sinatra/base'
require_relative 'lib/player'

class RockPaperScissors < Sinatra::Base
    get '/' do
       erb (:homepage)
    end

enable :sessions

    post '/save-name' do
        session[:firstname] = params[:firstname]
        redirect '/display-name'
    end

    get '/display-name' do
        $player = Player.new(session[:firstname])
        erb (:pre_game)
    end

    post '/saves-choice' do
        session[:playermove] = params[:playermove]
        redirect '/player-choice'
    end

    get '/player-choice' do
        $player.select_move(session[:playermove])
        erb (:player_choice)
    end

    get '/winner' do
        'You are the winner!'
    end

    run! if app_file == $0
end
