require 'sinatra/base'
require_relative 'lib/game'

class RPSWeb < Sinatra::Base
  enable :sessions
  set :views, proc{File.join(root, '' , 'views')}

  get '/' do
    erb :index
  end

  post '/play_game' do
    session[:name] = params[:name]
    redirect :play_game
  end

  get '/play_game' do
    @name = session[:name]
    erb :play_game
  end

  post '/result' do
    @game = Game.new
    @computer_choice = @game.comp_decision
    @user_choice = @game.user_choice(params[:weapon])
    @result = @game.result
    erb :result
  end

  run! if app_file == $0
end
