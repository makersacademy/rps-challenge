require 'sinatra/base'
require_relative './lib/result'
require_relative './lib/enemy'


class RockPaperScissors < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/weapon_select' do
    session[:player_name] = params[:player_name]
    session[:name_colour] = params[:name_colour]
    @player_name = session[:player_name]
    @name_colour = session[:name_colour]
    erb(:weapon_select)
  end

  post '/result' do
    session[:weapon] = params[:weapon]
    @weapon = session[:weapon]
    @comp = Enemy.new
    session[:comp_hand] = @comp.choice
    session[:result] = (Result.new(@weapon, @comp.choice)).evaluation
    redirect '/winner'
  end

  get '/winner' do
    @comp_hand= session[:comp_hand]
    @weapon = session[:weapon]
    @result = session[:result]
    # @winner = @result.game_result
    @name_colour = session[:name_colour]
    @player_name = session[:player_name]
    erb(:winner)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
