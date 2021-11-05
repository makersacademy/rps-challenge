require "sinatra/base"
require "sinatra/reloader"

class RockPaperScissors < Sinatra::Base
  enable :sessions
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/names' do
    @player_name = params[:player_name]
    @computer_name = params[:computer_name]
    erb :play
  end

  # get '/play' do
    
  # end
end