require 'sinatra/base'
require './lib/player'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  get '/how_to' do
    erb(:how_to)
  end

  post '/name' do
    session[:name] = params[:name]
    redirect to 'play'
  end

  get '/play' do
    @player = Player.new(session[:name])
    erb(:play)
  end

  run! if app_file == $0

end
