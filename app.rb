require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/game'


class RPS < Sinatra::Base
    enable :sessions

    get '/' do
        erb(:index)
    end

    post '/game' do
        session[:player1] = Player.new(params[:player1])
        session[:player2] = Player.new()
        @player1 = session[:player1]
        erb(:game)
    end

    post '/result' do
        session[:game] = Game.new(session[:player1], session[:player2])
        session[:game].play(params[:choice])
        @game = session[:game]
        erb(:result)
    end

    run! if app_file == $0

end