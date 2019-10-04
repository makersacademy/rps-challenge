require 'sinatra/base'

class RPS < Sinatra::Base
  enable :sessions

  get '/test' do
    'Testing infrastructure working!'
  end


  get '/' do
    erb :index
  end

  get '/single' do
    erb :single
  end

  post '/name' do
    @player1 = params[:player1]
    erb :name
  end


  get '/multi' do
    'coming soon'
  end
end
