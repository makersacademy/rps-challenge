require 'sinatra/base'
require 'tilt/erb'
require_relative 'lib/vscomputer'
require_relative 'lib/vsplayer'

class Rps < Sinatra::Base
	
	$array = []
	enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
  	session[:player] = params[:player]
  	redirect '/play'
  end

  get '/play' do 
  	@player = session[:player].capitalize
  	erb :play
  end

  post '/game' do
  	$game = params[:game]
    if $game == 'Vs Computer' then erb :game else erb :game2players end
  end

  post '/vscomputer' do  
    @player = session[:player].capitalize
    @rps = params[:rps].capitalize
    @game = Vscomputer.new(@rps)
    erb :resultvscomputer
  	
  end
  
  post '/vsplayer' do
    @player = session[:player].capitalize
    @rps = params[:rps].capitalize
    $array.push(@player)
    $array.push(@rps) 
    @gameplayers = Vsplayer.new($array)
    erb :resultvsplayer
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
