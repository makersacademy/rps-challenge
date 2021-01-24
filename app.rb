require 'sinatra/base'

class RPS < Sinatra::Base

    get '/' do
        erb(:index)
    end

    post '/game' do
        @player1 = params[:player1]
        erb(:game)
    end

    run! if app_file == $0

end