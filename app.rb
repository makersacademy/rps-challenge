require 'sinatra/base'
require './lib/computer.rb'
require './lib/rules.rb'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:form)
  end

  post '/players' do
    session[:player] = params[:player]
    redirect '/play'
  end

  get '/play' do
    @player = session[:player]
    erb(:play)
  end

  post '/compmove' do
    session[:move] = params[:move]
    redirect '/result'
  end

  get '/result' do
    @comp = Computer.new
    @compmove = @comp.compmove
    @move = session[:move]
    @rules = Rules.new(@move, @compmove)
    @winner = @rules.decide
    erb(:result)
  end
end
