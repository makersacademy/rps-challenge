require 'bundler'
Bundler.require

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    @player_1 = params[:player_1]
    redirect to('/select')
  end

  get '/select' do
    erb :select
  end

end
