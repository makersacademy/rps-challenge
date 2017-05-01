require 'sinatra/base'


class RPS_Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/VS' do
    @player_1 = params[:player_1]
    erb :versus
  end

  get '/play' do
    
  end

end
