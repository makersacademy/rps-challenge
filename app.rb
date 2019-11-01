require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
    enable :sessions
    get '/' do
        erb :index
    end

    post 'enter_names' do
        @player_1_name = params[:player_1]
        @player_2_name = params[:player_2]
        erb :play
    end

    # get 'play' do
    #     @player_1_name = session[:player_1]
    #     @player_2_name = session[:player_2]
    #     erb :play
    # end
end