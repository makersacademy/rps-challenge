require 'sinatra'


class RPSGame < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:name)
  end

  post '/name' do
    session[:name] = params[:name]
    redirect('/move')
  end

  get '/move' do
    @name = session[:name]
    erb(:move)
  end

  run! if app_file == $0

end
