require 'sinatra/base'



class RPSchallenge < Sinatra::Base
  set :views, proc { File.join(root, '..', 'views') }

  get '/' do
    erb :index
  end

  get '/name' do
    @name = params[:name]
    erb :name
  end

  get '/game' do
    # $game = Game.new 
    # @player_choice = $game.play 

    erb :game
  end

  get '/result' do

    erb :result
  end

 

  # start the server if ruby file executed directly
  run! if app_file == $0
end
