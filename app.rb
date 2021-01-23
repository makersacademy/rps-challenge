require 'sinatra/base'

class RPS < Sinatra::Base
enable :sessions

get '/' do 
    erb :index 
end 

post '/names' do 
    session[:player_name] = params[:player_name]
    @player_name = session[:player_name]
    erb :play
end

post '/play' do 
    session[:shape] = params[:shape]
    session[:opponent_shape] = Opponent.new.shape
    @shape = session[:shape]
    @opponent_shape = session[:opponent_shape]
    erb :play
end





run! if app_file == $0

end 
