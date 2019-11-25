require 'sinatra/base'
require './lib/rps_game'
# require './lib/player'

class Game < Sinatra::Base
  enable :sessions

  # before do
  #   @game = RPSGame.new
  # end

  get '/' do
    erb :index
  end

  post '/names' do
    session[:p1_name] = params[:p1_name]
    @p1_name = session[:p1_name]
    erb :names
  end

  post '/play' do

    erb :play
  end

  #  need to figure out how to carry over the stored names and choices for potential best of 3
  #  need to get the controller and the model layer communicating
  #  form input is posting and the post data is seen on the browser error form for /results
  #  is it going to be able to access p2_move from the model layer with the .sample in the def initialize?
  #  why is /results not opening :(
  get '/result' do
    #  put the name in here too to add a sentence which uses the name too
    session[:p1_move] = params[:p1_move]
    @p1_move = session[:p1_move]
    @game = RPSGame.new
    @game.results(params[:p1_move])
    erb :result
  end

  run! if app_file == $0
end
