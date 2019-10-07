require 'sinatra/base'
class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/' do
   session[:player1] = params[:player1]
   redirect '/play'
  end

  get '/play' do
    @player1 = session[:player1]
    erb(:play)
  end

  get '/outcome' do
    erb(:outcome)
  end
  run! if app_file == $0

end
