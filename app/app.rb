require 'sinatra/base'
require_relative '../lib/player'
require_relative '../lib/computer'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:player] = Player.new(params[:player_name])
    redirect to '/choice'
  end

  get '/choice' do
    @player = session[:player]
    erb :choice
  end

  post '/moved' do
    @player = session[:player]
    @player.choose(params[:choice].to_sym)
    session[:player] = @player
    redirect to '/outcome'
  end

  get '/outcome' do
    @player = session[:player]
    @computer = Computer.new
    @computer.choose
    erb :outcome
  end
end
