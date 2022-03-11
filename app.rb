require 'sinatra/base'
require 'sinatra/reloader'
require 'player'

class RockPaperScissors < Sinatra::Base
  enable :sessions
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/names' do
    @player = Player.new(params[:player]).name
    erb :play
  end 

  # get '/play' do

  # end 

  # run! if app_file == $0
end
