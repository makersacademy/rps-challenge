require 'sinatra/base'

class RPS < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/play' do
    $username = params[:username]
    redirect('/play')
  end

  get '/play' do
    @username = $username
    erb :play
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end

# the marketeer will be presented the choices (rock, paper and scissors)
# the marketeer can choose one option
# the game will choose a random option
# a winner will be declared
