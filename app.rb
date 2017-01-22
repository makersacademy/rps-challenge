require 'sinatra/base'
require 'tilt/erb'
require './lib/player'
require './lib/game'
require './lib/computer'

class Rps < Sinatra::Base
    enable :sessions
    
    helpers do
        def add_player(player)
            id = player.object_id
            Game.add_player(id, player)
            session[:player_id] = id
        end
        
        def current_player
            Game.find_player(session[:player_id])
        end
    end
    
    get '/' do
        erb(:index)
    end
    
    post '/names' do
        player_1 = Player.new(params[:player_1_name])
        add_player(player_1)
        redirect '/play'
    end
    
    get '/play' do
        erb(:play)
    end
    
    post '/choice' do
        current_player.choose(params[:choice])
        session[:computer_choice] = Computer.new.choice
        erb(:choice)
    end
    
    post '/result' do
        game = Game.new
        result = game.result(current_player.choice, session[:computer_choice]).to_s
        redirect "/#{result}"
    end
    
    get '/win' do
        erb(:win)
    end
    
    get '/draw' do
        erb(:draw)
    end
    
    get '/lose' do
        erb(:lose)
    end
    
    # start the server if ruby file executed directly
    run! if app_file == $0
end