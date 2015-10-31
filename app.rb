require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
  enable :sessions

    # get '/' do
    # "Hello world, bec"
    # end

    get '/' do
      erb(:register)
    end

    post '/names' do
      session[:Player_1] = params[:Player_1]
    redirect '/play'
    end

    get '/play' do
      @Player_1 = session[:Player_1]
      @Player_selection = params[:selection]
      @computer_selection = %w(Paper Scissors Rock).sample
      erb(:play)
    end

    get '/selected' do
      @Player_1 = session[:Player_1]
      erb(:result)
    end

run! if app_file == $0
end
