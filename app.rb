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

  get '/rock' do
    erb(:rock)
  end

  get '/paper' do
    erb(:paper)
  end

  get '/scissors' do
    erb(:scissors)
  end

  post '/bot' do
    session[:bot_choice] = ['Rock','Paper','Scissors'].sample
    redirect ('/results')
  end

  get '/results' do
    @bot_choice = session[:bot_choice]
    erb(:results)
  end

  # start the server when 'ruby app.rb' is executed in terminal
  run! if app_file == $0

end
