require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
enable :sessions

  get '/' do
    erb :index
  end

  get '/name' do
    @player = params[:name]
    redirect '/game'
  end

end
