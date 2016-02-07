require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/drago'

class RPS_challenge < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  get '/enter_names' do
    erb :enter_names
  end

  post '/names' do
    $playername = Player.new(params[:playername])
    redirect to('/play')
  end

  get '/play' do
    @playername = $playername.name
    erb :play
  end

  get '/ringwalk' do
    erb :ringwalk
  end

  get '/rps_selector' do
    erb :rps_selector
  end

  post '/user_selection' do
    session[:user_selection] = params[:rps]
    redirect to('/battle')
  end

  get '/battle' do
    @user_selection  = session[:user_selection]
    @drago_selection = Drago.new.choice
    erb :battle
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
