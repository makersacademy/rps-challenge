require 'sinatra/base'
require './lib/computer'
require './lib/weapon'

class RPS < Sinatra::Base

  RULES = {
  :rock     => {:rock => :draw, :paper => false, :scissors => true},
  :paper    => {:rock => true, :paper => :draw, :scissors => false},
  :scissors => {:rock => false, :paper => true, :scissors => :draw}
}

  enable :sessions

  get '/' do
    erb :index
  end

  post '/game' do
    session[:player_name] = params[:player_name]
    redirect '/game'
  end

  get '/game' do
    erb :game
  end

  post '/result' do
    session[:player_weapon] = params[:player_weapon]
    session[:computer] = Computer.new
    redirect '/result'

  end

  get '/result' do
    erb :result
  end

  # start the server is file executed directly
  run! if app_file == $0

end
