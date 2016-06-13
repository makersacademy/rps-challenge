require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/computer'
require_relative './lib/game'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    session[:name] = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    @player_name = session[:name]
    erb :play
  end

  post '/chosen_weapon' do
    session[:weapon] = params[:weapon].downcase.to_sym
    @player = Player.new(session[:name], session[:weapon])
    @game = Game.new(@player, Computer.new )
    redirect '/fight'
  end

  get '/fight' do
    @player = Player.new(session[:name], session[:weapon])
    @game = Game.new(@player, Computer.new )
    erb :fight
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
