require 'sinatra/base'
require 'sinatra'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:player_name] = params[:player_name]
    redirect ('/play')
  end

  get '/play' do
    @player_name = session[:player_name]
    erb(:play)
  end

  post '/hand' do
    session[:choice] = params[:choice]
    redirect ('/results')
  end

  get '/results' do
    # @player_choice = session[:choice]
    @bot_choice = ['Rock','Paper','Scissors'].sample
    erb(:results)
  end

  # start the server when 'ruby app.rb' is executed in terminal
  run! if app_file == $0

end
