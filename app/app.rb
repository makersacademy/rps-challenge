require 'sinatra/base'
require './lib/opponent.rb'
require './lib/turn.rb'
# replace with two dots to run rackup
# use one dot to pass rspec

class RPS < Sinatra::Base
  enable :sessions
  # get '/' do
  #   'Testing infrastructure working!'
  # end

  get '/' do
    erb :index
  end

  post '/name' do
    session[:player_name] = params[:name]
    redirect '/play'
  end

  get '/play' do
    @turn = Turn.new(session)
    erb :play
  end

  post '/play' do
    # need to add .downcase.to_sym to convert to downcase symbol
    session[:player_shape] = params[:shape].downcase.to_sym
    session[:opponent_shape] = Opponent.new.shape
    redirect '/play'
  end


  #start the sever if ruby file executed directly
  run! if app_file == $0
end
