require 'sinatra/base'
require_relative './lib/game'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/forms' do
    @version = params[:version]
    erb(:name_entry)
  end

  post '/names' do
    session['player_1'] = params[:player_1]
    params[:player_2].nil? ? session['player_2'] = "The Computer" : session['player_2'] = params[:player_2]
    redirect '/face_off'
  end

  get '/face_off' do
    session['player_1_move'] = nil
    session['player_2_move'] = nil
    @player_1 = session['player_1']
    @player_2 = session['player_2']
    erb(:face_off)
  end

  get '/player_1' do
    @player_1 = session['player_1']
    erb(:player_1)
  end

  post '/move_1' do
    session['player_1_move'] = params[:player_1_move]
    if session['player_2'] == "The Computer"
      redirect '/outcome'
    else
      redirect '/player_2'
    end
  end

  get '/player_2' do
    @player_2 = session['player_2']
    erb(:player_2)
  end

  post '/move_2' do
    session['player_2_move'] = params[:player_2_move]
    redirect '/outcome'
  end

  get '/outcome' do
    @player_1 = session['player_1']
    @player_2 = session['player_2']
    @game = Game.new(@player_1, @player_2)
    @player_1_move = session['player_1_move']
    if session['player_2_move'].nil?
      @player_2_move = @game.computer_move
    else
      @player_2_move = session['player_2_move']
    end
    @winner = @game.winner(@player_1_move, @player_2_move)
    erb(:outcome)
  end

  run! if app_file == $0
end
