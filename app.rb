require 'sinatra/base'

class RockPaperScissors < Sinatra::Base

  get '/' do
    # 'Welcome to Rock Paper Scissors!'
    erb(:name)
  end

  post '/' do
    @player1 = params[:player1]
    redirect '/play'
  end

  post '/play' do
    @player1 = params[:player1]
    erb(:play)
  end



 run! if app_file == $0
end
