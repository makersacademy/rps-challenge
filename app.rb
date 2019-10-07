require 'sinatra'
require './lib/computer'
require './lib/player'
require './lib/game'

class Rps < Sinatra::Base
  enable :sessions
  
  get '/' do
    erb :index
  end

  post '/name' do      
    session[:player] = Player.new(params[:player])
    redirect '/choose_weapon'
  end

  get '/choose_weapon' do    
    @player = session[:player]    
    erb :choose_weapon
  end

  get '/play/:weapon' do  
    @player = session[:player]   
    @player.choose_weapon(params[:weapon]) 
    @computer = Computer.new       
    @game = Game.new(@player, @computer)    
    erb :play
  end  
end
