require 'sinatra/base'

class RPS < Sinatra::Base


get '/' do 
    erb :index 
end 

post '/names' do 
    session[:player_name] = params[:player_name]
    @player_name = session[:player_name]
    erb :play
end



run! if app_file == $0

end 
