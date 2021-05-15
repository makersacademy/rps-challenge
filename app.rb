require 'sinatra/base'
require 'sinatra/reloader'
require_relative './lib/game.rb'
require_relative './lib/player.rb'

class RPS < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end
  
  attr_reader :player_1_name, :choice, :opponent_choice, :game, :end_result

  enable :sessions

  get '/' do
    erb :index
  end
  
  post '/name' do
    session[:name] = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    @player_1_name = session[:name]
    erb :play
  end

  post "/play" do
    @game = Game.new(@player_1_name)
    opponent = @game.opponent
    opponent.random_choice
    session[:choice] = params[:choice]
    session[:opponent_choice] = opponent.opponent_choice
    redirect '/choice'
  end

  get '/choice' do
    @game = Game.new(@player_1_name)
    @choice = session[:choice].downcase
    @opponent_choice = session[:opponent_choice]
    @end_result = @game.result(@choice, @opponent_choice)
    erb :choice
  end 

  # start the server if ruby file executed directly
  run! if app_file == $0
end
