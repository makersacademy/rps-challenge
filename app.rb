require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/player' do
    session[:player1] = params[:player1]
    redirect '/gameplay'
  end

  get '/gameplay' do
    @player1 = session[:player1]
    erb(:gameplay)
  end
end
