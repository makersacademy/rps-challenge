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

  post '/rock' do
    @choice = 'Rock'
    erb(:home)
  end

  post '/paper' do
    @choice = 'Paper'
    erb(:home)
  end

  post '/scissors' do
    @choice = 'Scissors'
    erb(:home)
  end

 run! if app_file == $0
end
