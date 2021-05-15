require 'sinatra/base'
require 'sinatra/reloader'
require './lib/game.rb'

class App < Sinatra::Base
  enable :sessions

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb(:index)
  end
  
  post '/name' do
    @game = Game.create(params[:name])
    redirect('/play')
  end

  before do
    @game = Game.instance
  end

  get '/play' do
    erb(:play)
  end

  get '/result' do
    @option = session[:option]
    @result = @game.declare_winner(@option)
    erb(:result)
  end


  post '/select' do
    # refactor to store player_option in game.player_option
    params.each_value { |v| session[:option] = v } 
    redirect('/result') 
  end
 
  run! if app_file == $0
end