require 'sinatra'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
      erb :index
  end
p 'Where the blazes am I?'

# OK so is this coming here or going to /names in index.erb
# This appearsto be sequential with the post and get as methods


  post '/names' do
    p 'In names'
    p params
    session[:user_name] = params[:"user_name"]
    p session
    redirect '/play'
  end

# play should be post becuase I want the weapon back
# but only seems to work if its a get

  get '/play' do
    p 'In play'
    p @user_name = session[:user_name]
    erb :welcome
    # p params[:weapon]
  end

  post '/winner' do
    p 'in winner'
  end
p 'Completed play'

    run! if app_file == $0
end
