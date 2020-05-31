require 'sinatra'
require_relative './lib/game.rb'

class RPSGame < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:name)
  end

  post '/name' do
    if params[:name_2] == ""
      session[:game] = Game.new(params[:RPSSL], params[:name])
    else
      session[:game] = Game.new(params[:RPSSL], params[:name], params[:name_2])
    end
    redirect('/move')
  end

  get '/move' do
    @rpssl = session[:game].rpssl
    @name = session[:game].player1
    erb(:move)
  end

  post '/selected_move' do
    session[:game].player_1_move = params[:move]
    redirect('/result') if session[:game].player2 == "Computer"
    redirect('/move2')
  end

  get '/move2' do
    @rpssl = session[:game].rpssl
    @name_2 = session[:game].player2
    erb(:move2)
  end

  post '/selected_move2' do
    session[:game].player_2_move = params[:move_2]
    redirect('/result')
  end

  get '/result' do
    @player_1_move = session[:game].player_1_move
    @player_2_move = session[:game].player_2_move
    @name = session[:game].player1
    @name_2 = session[:game].player2
    @result = session[:game].result_string
    @player_2_move = session[:game].player_2_move # repeat for computer move
    erb(:result)
  end

  run! if app_file == $0

end
