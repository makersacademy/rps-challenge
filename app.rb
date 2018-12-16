require 'sinatra/base'
require_relative './lib/result'

class RockPaperScissors < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/weapon_select' do
    session[:player_name] = params[:player_name]
    session[:name_colour] = params[:name_colour]
    session[:weapon] = params[:weapon]
    @name_colour = session[:name_colour]
    @player_name = session[:player_name]
    @weapon = session[:weapon]
    erb(:weapon_select)
  end

  post '/result' do
    @name_colour = session[:name_colour]
    @player_name = session[:player_name]
    @weapon = session[:weapon]
    session[:result] = Result.new(@weapon)
    redirect '/winner'
  end

  get '/winner' do
    session[:player_name] = params[:player_name]
    session[:name_colour] = params[:name_colour]
    session[:weapon] = params[:weapon]
    @name_colour = session[:name_colour]
    @player_name = session[:player_name]
    @weapon = session[:weapon]
    @result = session[:result]
    @result_cp = @result.comp_hand
    erb(:winner)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
