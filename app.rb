require 'sinatra/base'

class Game < Sinatra::Base
    enable :sessions

    get '/' do 
        erb(:home)
    end
    
    post "/game_setup" do
        session[:game] = Game.new(params[:player1], params[:player2])
        redirect '/play'
    end

    post '/play' do
        erb(:play)
    end

    run! if app_file == $0
end 