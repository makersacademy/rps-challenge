require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:name] = params[:name]
    redirect('/play')
  end

  get '/play' do
    @player = session[:name]
    erb :play
  end

  post '/move' do
    # new instance of computer
    # call move method on that instance
    # erb :outcome
    # include a play again button
    # redriect to play
  end



end
