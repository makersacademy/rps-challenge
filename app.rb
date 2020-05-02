require 'sinatra/base'
require_relative 'lib/person.rb'
require_relative 'lib/game.rb'

class RockPaperScissors < Sinatra::Base

  enable :sessions

  # set :session_secret, ENV.fetch('SESSION_SECRET') { SecureRandom.hex(64) }

  get '/' do
    erb :index
    # session[:player2] = nil unless (session[:player2].nil?) 
  end

  post '/name' do
    session[:player1] = Person.new(params[:name])
    if params[:name2].length.positive?
      session[:player2] = Person.new(params[:name2])
    else
      session[:player2] = nil
    end
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/game' do
    session[:player1].store_move(params[:rps])
    session[:player2]&.store_move(params[:rps2])
    game = Game.new(session[:player1], session[:player2])
    session[:winner] = game.play
    redirect '/results'
  end

  get '/results' do
    erb :results
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
