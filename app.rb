require 'sinatra/base'
require './lib/player'
require './lib/computer'
require './lib/game'
require './lib/win'
require 'csv'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end
  
  get '/start_single' do
    erb :login_single
  end

  get '/start_multi' do
    erb :login_multi
  end
  
  post '/login_single' do
    session[:game] = Game.new(Player.new(params[:player1]))	  
        redirect '/play'
  end

  post '/login_multi' do
    session[:game] = Game.new(Player.new(params[:player1]),Player.new(params[:player2]))
    session[:game].set_multiplayer
    redirect '/play'
  end

  get '/play' do
    @game = session[:game]
    @player1 = @game.player1
    @player2 = @game.player2
    erb :play
  end

  post '/draw' do
    @current_player = session[:game].current_player
    @current_player.draw(params[:hand])
    session[:game].multiplayer ? redirect('/multiplayer') : redirect('/singleplayer')
  end

  get '/multiplayer' do
    session[:game].find_winner if session[:game].final_hand?
    session[:game].switch_player
    redirect '/play'
  end

  get '/singleplayer' do
    session[:game].opponent.play_hand 
    session[:game].find_winner
    redirect '/play'
  end

  post '/save' do
    CSV.open('player_data', 'wb') do |csv|  
      csv << [session[:game].player1.name, session[:game].player1.points] 
      csv << [session[:game].player2.name, session[:game].player2.points]
    end 
    redirect '/quit'
  end 
 
  get '/quit' do
    @game = session[:game]
    erb :win
  end
end
