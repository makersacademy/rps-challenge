require 'sinatra'
require_relative './lib/player.rb'
require_relative './lib/opponent.rb'
require_relative './lib/referee.rb'

class Game < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:name] = params[:name]
    redirect to('/play')
  end

  get '/play' do
    @player = Player.new(session[:name])
    erb :play
  end

  get '/result' do
    @opponent = Opponent.new
    @move = params[:move]
    @referee = Referee.new(@move, @opponent.choose)
    erb :result
  end

  run! if app_file == $0
end
