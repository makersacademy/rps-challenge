require 'sinatra/base'

class RPSApp < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/info' do
    $name1 = params[:name1]
    $name2 = params[:name2]
    redirect '/play'
  end

  get '/play' do
    erb :play
  end


end
