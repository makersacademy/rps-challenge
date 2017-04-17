require 'sinatra/base'
require_relative 'rpsclass'

class RockPaperScissorsWeb < Sinatra::Base

	enable :sessions
  
  set :views, proc { File.join(root, '..', 'views')}

  get '/' do
    erb :index
  end

  post '/game-setup' do
  	session[:player_name] = params[:player_name]
  	redirect '/game-setup'
  end

  get '/game-setup' do
  	@player_name = session[:player_name]
  	$rps = Rps.new
  	erb :game_setup
  end

  post '/game-result' do
  	@player_shape = params[:player_shape]
    player_shape = $rps.play(@player_shape)
    computer_shape = $rps.computer_choice
    $rps.game_eval(computer_shape, player_shape)
  	redirect '/game-result'
  end

  get '/game-result' do
    $rps.result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
