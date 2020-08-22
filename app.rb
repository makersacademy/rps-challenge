require 'sinatra/base'
require 'rspec'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/player' do
    @player = params[:player]
    erb(:play)
    #redirect '/play'
  end

  get '/play' do

  end

  run! if app_file == $0

end
