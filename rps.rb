require 'sinatra/base'
require './lib/results'
require './lib/opponent.rb'


class Rps < Sinatra::Base

enable :sessions

  # def initialize(Results.new)
  #   @result = result
  # end

  get '/' do
    erb(:login)
  end

  post '/player_info' do
    session[:name] = params[:name]
    redirect to('/game_lobby')
  end

  get '/game_lobby' do
    @name = session[:name]
    erb(:player_details)
  end

  post '/player_move' do
    session[:move] = params[:move]
    @move = session[:move]
    redirect to('/results')
  end

  get '/results' do
    @move = session[:move].to_sym
    @name = session[:name]
    @end_game = Result.new.result(@move)
    erb(:result_page)
  end
end
