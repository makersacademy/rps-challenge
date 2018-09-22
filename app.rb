require 'sinatra/base'
require_relative './lib/player.rb'
require_relative './lib/game.rb'

class RockPaperScissors < Sinatra::Base
  enable :sessions
  set :session_secret, "enabled"

  get '/' do
    erb :index
  end

  post '/name' do
    session[:name] = Player.new(params[:player])
    session[:game] = Game.new
    redirect '/play'
  end

  get '/play' do
    @player = session[:name].name
    erb :play
  end

  post '/rock' do
    session[:outcome] = session[:game].rock
    session[:computer_outcome] = session[:game].computer_move
    redirect '/outcome'
  end

  post '/paper' do
    session[:outcome] = session[:game].paper
    session[:computer_outcome] = session[:game].computer_move
    redirect '/outcome'
  end

  post '/scissors' do
    session[:outcome] = session[:game].scissors
    session[:computer_outcome] = session[:game].computer_move
    redirect '/outcome'
  end
  
  get '/outcome' do
    @outcome = session[:outcome]
    @computer_outcome = session[:computer_outcome]
    @decider = session[:game].decision(@outcome, @computer_outcome)
    erb :outcome
  end
  
  run! if app_file == $0
end
