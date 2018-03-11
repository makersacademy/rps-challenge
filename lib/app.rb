require 'sinatra/base'
require_relative './game.rb'

class Rps < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:player_1_name] = params[:Player_1_name]
    # session[:player_2_name] = params[:Player_2_name]
    redirect('/play')
  end

  get '/play' do
    @player_1_name = session[:player_1_name]
    # @player_2_name = session[:player_2_name]
    erb(:play)
  end

  post '/selection' do
    session[:selection] = params[:Player_1_selection]
    redirect('result')
  end

  get '/result' do
    @player_1_selection = session[:selection]
    game = Game.new
    session[:ai_choice] = game.ai_choice
    redirect('/draw') if game.draw?(@player_1_selection)
    if game.win?(@player_1_selection)
      redirect('/win')
    else
      redirect('/loss')
    end
  end

  get '/draw' do
    erb(:draw)
  end

  get '/loss' do
    @player_1_name = session[:player_1_name]
    @ai_selection = session[:ai_choice].capitalize!
    @player_1_selection = session[:selection].capitalize!
    erb(:loss)
  end

  get '/win' do
    @player_1_name = session[:player_1_name]
    @ai_selection = session[:ai_choice].capitalize!
    @player_1_selection = session[:selection].capitalize!
    erb(:win)
  end


  run! if app_file == $0
end

#<input type="text" name="Player_2_name">
