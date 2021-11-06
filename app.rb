require 'sinatra/base'
require 'sinatra/reloader'
require './lib/computer'
require './lib/player'


class RockPaperScissors < Sinatra::Base
  enable :sessions 
  configure :development do
    register Sinatra::Reloader 
  end
 
  get '/' do
    erb(:index)
  end

  post '/play' do
    session[:player_name] = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    @player_name = session[:player_name]
    erb(:play)
  end

  post '/option' do
    session[:option] = params[:option]
    redirect('/result')
  end

  get '/result' do
    @option = session[:option]
    @computer = Computer.new
    erb(:result)
  end
  
  # start the server if ruby file executed directly
  run! if app_file == $0
end