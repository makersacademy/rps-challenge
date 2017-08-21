require 'sinatra'
require_relative './lib/game'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/pick_one' do
    @players = Players.create(params[:name0], "RPSSL Master")
    redirect '/pick_one'
  end

  post '/pick_two' do
    @players = Players.create(params[:name1], params[:name2])
    redirect '/pick_two'
  end

  before do
    @players = Players.instance
  end

  get '/pick_one' do
    erb(:player1)
  end

  post '/single_result' do
    @outcome = Game.create(params[:user1])
    @outcome.result
    erb(:result)
  end

  get '/pick_two' do
    erb(:player1_in_double)
  end

  post '/double_choice' do
    session[:player1] = params[:user1]
    erb(:player2_in_double)
  end

  post '/double_result' do
    @outcome = Game.create(session[:player1], params[:user2])
    @outcome.result
    erb(:result)
  end

  run! if app_file == $0
end
