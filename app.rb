require 'sinatra'


class Rock_Paper_Scissors < Sinatra::Base

    get '/' do
      erb :index
    end

    post '/name' do
      session[:player_name] = params[:player_name]
      redirect '/play'
    end

    run! if app_file == $0
end
