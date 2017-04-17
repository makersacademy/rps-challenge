require 'sinatra/base'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:player_name] = params[:player_name].capitalize
    redirect '/play'
  end

  get '/play' do
    @player_name = session[:player_name]
    @weapon = session[:weapon]
    @chosen_weapon = session[:chosen_weapon]
    erb :play
  end

  # get '/machine' do
  #   @chosen_weapon = session[:chosen_weapon]
  #   erb :play
  # end

  post '/play' do
    session[:weapon] = params[:weapon]
    # session[:chosen_weapon] = Machine.new.chosen_weapon
    redirect '/play'
  end

  # post '/machine' do
  #   session[:chosen_weapon] = params[:chosen_weapon]
  #   redirect '/play'
  # end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
