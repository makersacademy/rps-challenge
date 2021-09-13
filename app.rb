require 'sinatra/base'
require 'sinatra/reloader'

class RPS < Sinatra::Base
  configure :development do
    register Sinatra::Reloader #registering necessary for modular applications (if development works only for 'classic applications #sinatrarb.com/contrib/reloader
  end
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:player_name] = params[:player_name]
    redirect :play
  end

  get '/play' do
    erb :play
  end

  post '/input' do
    # using a checkbox form for input - will require a post request
    # need to save the tickbox selected - as params?
    redirect :result
  end


  get '/result' do
    erb :result
  end
  
  run! if app_file == $0
end
