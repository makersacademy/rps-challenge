require 'sinatra'
require_relative './lib/game'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/pick_one' do
    # session[:name1] = params[:name0]
    @name1 = params[:name0]
    @name2 = "RPSSL Master"
    @players = Players.create(@name1, @name2)
    redirect '/pick_one'
  end

  get '/pick_one' do
    # session[:name2] = "RPSSL Master"
    @players = Players.instance
    erb(:player1)
  end

  post '/single_result' do
    @players = Players.instance
    # @name1 = session[:name1]
    # @name2 = session[:name2]
    session[:player1] = params[:user1]
    @outcome = Game.create(session[:player1])
    @outcome.result
    erb(:result)
  end

  post '/pick_two' do
    # session[:name1] = params[:name1]
    # session[:name2] = params[:name2]
    @name1 = params[:name1]
    @name2 = params[:name2]
    @players = Players.create(@name1, @name2)
    redirect '/pick_two'
  end

  get '/pick_two' do
    @players = Players.instance
    # @name1 = session[:name1]
    # @name2 = session[:name2]
    erb(:player1_in_double)
  end

  post '/double_choice' do
    @players = Players.instance
    # @name1 = session[:name1]
    # @name2 = session[:name2]
    session[:player1] = params[:user1]
    erb(:player2_in_double)
  end

  post '/double_result' do
    @players = Players.instance
    session[:player2] = params[:user2]
    # @name1 = session[:name1]
    # @name2 = session[:name2]
    @outcome = Game.create(session[:player1], session[:player2])
    @outcome.result
    erb(:result)
  end

  run! if app_file == $0
end
