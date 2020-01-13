require 'sinatra/base'

class RPSWeb < Sinatra::Base
  enable :sessions
  
  get '/' do
    erb :index
  end

  post '/names' do
    session['player_1'] = params[:player_1]
  end

end
