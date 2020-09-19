require 'sinatra/base'
require './lib/player.rb'
require_relative './lib/rps.rb'


class Rock_paper_scissors < Sinatra::Base

  enable :sessions

  get '/' do 
    erb(:index)
  end 

  post '/play' do 
    $player = Player.new(params[:Name])
    # session['name'] = params[:Name]
    redirect '/play'
  end 

  get '/play' do 
    @player_name = $player.name
    # @player = session['name']
    erb(:play)
  end 

  post '/result' do
    $player.choose_move(params[:move]) 
    # session['move'] = params[:move] 
    redirect '/result'
  end 

  get '/result' do 
    @move = $player.move
    erb(:result)
  end

end
