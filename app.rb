require 'sinatra/base'
class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:player] = Player.new(params[:name])
    p session
    redirect '/play'
  end 



end
