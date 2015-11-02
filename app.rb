require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
  enable :sessions

    get '/' do
      erb(:register)
    end

    post '/names' do
      session[:player_1] = params[:player_1]
    redirect '/play'
    end

    get '/play' do
      @player_1 = session[:player_1]
      @player_selection = params[:selection]
      @computer_selection = %w(paper scissors rock).sample
      erb(:play)
    end

    get '/selected' do
      @player_1 = session[:player_1]
      erb(:result)
    end

run! if app_file == $0
end
