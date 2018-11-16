require 'sinatra/base'
require_relative 'game'
require_relative 'player'

class RockPaperScissors < Sinatra::Application
  set :sessions, true
  get '/' do
    erb(:index)
  end

  get '/choice' do
    @name = session[:name]
    erb(:choice)
  end

  get '/result' do
    @player1 = Player.new(session[:name], session[:choice])
    @player2 = Player.new('computer')
    @result = Game.new(@player1, @player2).result
    erb(:result)
  end

  post '/' do
    session[:name] = params[:player_name]
    redirect '/choice'
  end

  post '/choice' do
    @name = session[:name]
    session[:choice] = params[:choice]
    puts session[:choice]
    redirect '/result'
  end
end
