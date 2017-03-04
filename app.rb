require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
  enable :sessions
  get '/' do
    erb :index
  end

  post '/name' do
    p params
    session[:name] = params[:name]
    @player = Player.new(params[:name])
    redirect '/play'
  end

  get '/play' do
    @name = session[:name]
    erb :play
  end

  post '/option' do
    p params
    session[:option] = params[:option]
    redirect '/choice'
  end

  get '/choice' do
    @option = session[:option]
    erb :choice
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
