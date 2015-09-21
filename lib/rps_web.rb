require 'sinatra/base'
require_relative '../game_setup.rb'

class RPSWeb < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/new-game' do
    p params
    session[:username] = params[:username]
    redirect '/play-game'
  end

  get '/play-game' do
    @username = session[:username]
    $game = Game.new(Player.new(@username))
    erb :play_game
    # <%= params %>
  end

  get '/result' do
    p params
    $game.play(params[:hand].to_sym)
    erb :result
  end




  # start the server if ruby file executed directly
run! if app_file == $PROGRAM_NAME
set :views, proc { File.join(root, '..', 'views') }
#Apparently this is the place to link to stylesheets ??? Not currently working!
# set :styles, proc { File.join(root, '..', 'styles/styles.css') }
end
