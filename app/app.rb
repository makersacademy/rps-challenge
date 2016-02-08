require 'sinatra/base'
require 'rack'

class RockPaperScissorsGame < Sinatra::Base
  use Rack::Session::Pool, :expire_after => 2592000
  set :session_secret, "super secret"

  get '/' do
    erb :home
  end

  get '/registration' do
    erb :registration
  end

  post '/game' do
    @player = Player.new(params[:player_name])
    @game = Game.new(@player,Winner)
    session[:game] = @game
    redirect '/game'
  end

  get '/game' do
    @game = session[:game]
    erb :game
  end

  post '/result' do
    @game = session[:game]
    @game.set_player_choice(params[:choice])
    
  end

  get '/result' do
    erb :result
  end
  # Start the server if Ruby file executed directly
  run! if app_file == $0
end
