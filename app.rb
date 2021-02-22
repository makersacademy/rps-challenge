
require 'sinatra/base'
require './lib/game'

class Game < Sinatra::Base
    enable :sessions
    set :session_secret, 'super secret'

get '/' do
        erb :index
    end

post '/name' do
    session[:player_name] = params[:player_name]
    redirect '/play'
end

get '/play' do
    @player_name = session[:player_name]
    erb :play
end

post '/outcome' do
        session[:player_choice] = params[:choice]
        redirect '/result'
    end

    get '/result' do
        @player_choice = session[:player_choice]
        @player_name = session[:player_name]
        @game = RockPaperScissors.new(@player_name)
        erb :winner
    end






    run! if app_file == $0
end

