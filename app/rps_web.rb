require 'sinatra/base'

class RPSWeb < Sinatra::Base

  attr_reader :player_name
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    session[:player_name] = params[:player_name]
    @player_name = session[:player_name]
    erb(:game)
  end

  get '/start' do
    erb(:play)
  end

  get '/rock' do
    erb(:result)
  end

  get '/scissors' do
    erb(:result)
  end
  get '/paper' do
    erb(:result)
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
