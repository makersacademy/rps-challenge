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
    session[:game] = Game.new
    redirect ('/') if params[:name].empty?
    redirect ('/new_game')
  end

  get '/new_game' do
    @name = session[:name]
    erb :new_game
  end

  post '/new_game' do
    session[:move] = params[:move]
    redirect ('/result')
  end

  get '/result' do
    erb :result
  end

end
