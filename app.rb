require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player.rb'

class App < Sinatra::Base
  enable :sessions

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb(:index)
  end
  
  get '/play' do
    @name = session[:name]
    erb(:play)
  end

  get '/result' do
    @option = session[:option]
    @name = session[:name]
    @random_option = Player.new('Game').select_random
    erb(:result)
  end

  post '/name' do
    session[:name] = params[:name]
    redirect('/play')
  end

  post '/select' do
    # session[:option] = ""
    params.each_value { |v| session[:option] = v } 
    redirect('/result') 
  end
 
  run! if app_file == $0
end