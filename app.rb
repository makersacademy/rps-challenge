require 'sinatra/base'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    @player = params[:player_name]
    redirect('/weapons')
  end

  get '/weapons' do
    erb(:weapons)
  end



end
