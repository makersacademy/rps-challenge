require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player.rb'
require './lib/game.rb'

class MyApp < Sinatra::Base
  enable :sessions 

  configure :development do
    register Sinatra::Reloader
    also_reload 'lib/index.erb'
    also_reload 'lib/play.erb'
    also_reload 'lib/player.rb'
    also_reload 'lib/game.rb'
  end

  # our routes would go here
  get '/' do 
    erb(:index)
  end

  post '/names' do
    $player_1 = Player.new(params[:name1])
    p $player_1
    redirect '/play'
  end
  
  get '/play' do
    @name1 = $player_1.name
    erb(:play)
  end 

  post '/moves' do
    session[:move1] = params[:first_move]
    redirect '/random_move'
  end 

  get '/random_move' do 
    @move1 = session[:move1]
    @name1 = $player_1.name
    game = Game.new
    @move2 = game.computer_move
    @outcome = game.result(@move1, @move2)
    redirect '/outcome'
  end 

  get '/outcome' do 
    @move1 = session[:move1]
    @name1 = $player_1.name
    erb(:outcome)
  end 
  
  # # Start the server if this file is executed directly (do not change the line below)
  run! if app_file == $0
end