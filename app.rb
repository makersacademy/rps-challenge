require 'sinatra/base'


class RPS < Sinatra::Base
  get '/' do
    erb(:index)
  end

  post '/names' do
    player_one = params[:player_one]
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

  get '/winner' do
    erb(:winner)
  end

end
