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
    @player = session[:player]
    erb(:play)
  end

  get '/result' do
    @option = session[:option]
    @player = session[:player]
    @random_option = @player.select_random
    erb(:result)
  end

  post '/name' do
    session[:player] = Player.new(params[:name])
    redirect('/play')
  end

  post '/select' do
    params.each_value { |v| session[:option] = v } 
    redirect('/result') 
  end
 
  run! if app_file == $0
end