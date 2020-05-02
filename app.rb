require 'sinatra/base'

class RPS < Sinatra::Base

  enable :sessions
  set :session_secret, 'cy-krets'

  get '/' do
    # submit player1 name
    erb :reg_names
  end

  post '/play' do
    # show player vs computer
    # player submits their choice
    p session[:player1_name] = params[:player1_name]
    p @player1_name = session[:player1_name]
    erb :play
  end

  post '/results' do
    # show results
    # button - play again? redirect to /play
    # button - reset player? redirect to /homepage
    erb :results
  end

  # start the server if ruby file executed directly
  run! if app_file == $0

end
