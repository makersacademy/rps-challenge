require 'sinatra/base'
require './lib/rps'

class RockPaperScissors < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/start' do
    session[:name] = params[:name]
    @name = $player_name
    erb(:start)
  end

  post '/decision' do
    @name = session[:name]
    session[:game] = RPS.new(@name, params[:move])
    erb(:decision)
  end

  get '/end' do
    erb(:erb)
  end

end

