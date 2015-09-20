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
    session[:player_throw] = params[:move]
    session[:computer_throw] = session[:game].moves.sample
    redirect ('/result')
  end

  get '/result' do
    @player_throw = session[:player_throw].to_sym
    @computer_throw = session[:computer_throw].to_sym
    @outcome = session[:game].defeat
    erb :result
  end

end
