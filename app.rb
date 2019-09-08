require 'sinatra'
require 'sinatra/base'

class RPSGame < Sinatra::Base

  enable :session

  get '/' do
    erb(:index)
  end

  post '/name' do
    @player = params[:player]
    session[:player] = @player
    erb(:play)
  end

  get '/result' do
      @game = Game.new(params[:move])
      @player = session[:player]
      erb(:result)
  end

  run! if app_file == $0

end
