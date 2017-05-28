require 'sinatra/base'

class RubyPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/player_name' do
    session[:player_name] = params[:player_name]
    redirect '/rounds'
  end

  get '/rounds' do
    @player_name = session[:player_name]
    erb :rounds
  end

  get '/play' do
    erb :play
  end

  run! if __FILE__ == $PROGRAM_NAME
end