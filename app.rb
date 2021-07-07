require "sinatra/base"

class MyRackApp <Sinatra::Base
enable :sessions

get '/' do
    erb :index
    end

post '/names' do
        session[:player_1_name] = params[:player_1_name]
        session[:player_2_name] = params[:player_2_name]
        redirect '/player'
      end

get '/player' do
    @player_1_name = session[:player_1_name]
    @player_2_name = session[:player_2_name]
    erb :player
  end

end