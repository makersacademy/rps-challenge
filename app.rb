require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb :name_form
  end

  post '/enter-name' do
    session[:player_name] = params['name']
    redirect to '/game'
  end

  get '/game' do
    @name = session[:player_name]
    erb :game
  end
end
