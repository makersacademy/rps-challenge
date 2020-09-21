require 'sinatra/base'

class Rps < Sinatra::Base
    enable :sessions

    get '/' do
      erb(:index)
    end 

    post '/names' do
        $player_1 = Player.new(params[:player_1_name])
     redirect '/play'
    end

    get '/play' do
        @player_1_name = $player_one.name
        erb(:play)
    end 
    
    get '/attack' do
       @player_1_name = $player_one.name 
       erb(:attack)
    end

 
end