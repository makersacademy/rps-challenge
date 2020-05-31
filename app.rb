require 'sinatra'
require_relative './lib/game.rb'

class RPSGame < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:name)
  end

  post '/name' do
    # session[:name] = params[:name]
    # session[:name_2] = params[:name_2]
    if params[:name_2] == ""
      session[:game] = Game.new(params[:name])
    else
      session[:game] = Game.new(params[:name], params[:name_2])
    end
    redirect('/move')
  end

  get '/move' do
    @name = session[:game].player1
    erb(:move)
  end

  post '/selected_move' do
    session[:player_move] = params[:move]
    redirect('/result') if session[:game].player2 == "Computer"
    redirect('/move2')
  end

  get '/move2' do
    @name_2 = session[:game].player2
    erb(:move2)
  end

  post '/selected_move2' do
    session[:player_2_move] = params[:move_2]
    redirect('/result')
  end

  get '/result' do
    @player_move = session[:player_move]
    @player_2_move = session[:player_2_move]
    @name = session[:game].player1
    @name_2 = session[:game].player2
    if @name_2 == "Computer"
      @result = session[:game].result_string(@player_move)
      @player_2_move = session[:game].player_2_move
    else
      @result = session[:game].result_string(@player_move, @player_2_move)
    end
    erb(:result)
  end

  run! if app_file == $0

end
