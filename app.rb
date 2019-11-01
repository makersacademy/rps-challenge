require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
    enable :sessions

    get '/' do
        erb :index
    end

    post '/enter_names' do
        @player_1_name = params[:player_1]
        erb :play
    end

    get '/play' do
        @player_1_name = session[:player_1]
        erb :play
    end

    run! if app_file == $0
end