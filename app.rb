require 'sinatra'
require_relative './lib/game'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/pick_one' do
    session[:name1] = params[:name1]
    redirect '/pick_one'
  end

  get '/pick_one' do
    @name1 = session[:name1]
    erb(:choice)
  end

  post '/result' do
    # p @user_choice = params[:varname]
    @outcome = Game.new(params[:varname])
    @outcome.result
    erb(:result)
  end

  run! if app_file == $0
end
