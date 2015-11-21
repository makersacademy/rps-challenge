require 'sinatra/base'
require './lib/one_session.rb'
require './lib/opponent.rb'

class Game < Sinatra::Base

  enable :sessions

  run! if app_file == $0

  get '/' do
    erb :index
  end

  post '/name' do
    session[:name] = params[:player_name]
    redirect('/play')
  end

  get '/play' do
    @turn = OneSession.new(session)
    erb :play
  end

  post '/play' do
    session[:player_choice] = params[:rps_choice].downcase.to_sym
    session[:computer_choice] = Opponent.new.choice
    redirect('/play')
  end

  # get '/result' do
  #   session[:player_choice] = params[:rps]
  #   @player_choice = session[:rps_choice]
  #   # @p_name.option(@player_choice)
  #   erb :result
  # end
end
