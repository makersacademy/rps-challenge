require 'sinatra/base'
require_relative 'game'

class RockPaperScissors < Sinatra::Base
  set :views, proc {File.join(root,'..','/views')}

  enable :sessions

  get '/' do
    erb :index
  end

  post '/' do
    session[:name] = params[:name]
    redirect ('/') if params[:name].empty?
    redirect ('/new_game')
  end

  get '/new_game' do
    @name = session[:name]
    session[:game] = Game.new
    erb :new_game
  end

  post '/new_game' do
    session[:player_throw] = params[:move].to_sym
    redirect ('/result')
  end

  get '/result' do
    @player_throw = session[:player_throw]
    @computer_throw = session[:game].moves.sample
    erb :result
  end

end
