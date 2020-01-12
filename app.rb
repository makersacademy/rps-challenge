require 'sinatra/base'
require './lib/rps'

class RockPaperScissors < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/start' do
    @name = params[:name]
    erb(:start)
  end

  get '/decision' do
    p params[:move]
    @move = params[:move]
    @name = params[:name]
    erb(:decision)
  end

  post '/decision' do
    @move = params[:move]
    @name = params[:name]
    redirect 'decision'
  end
end
