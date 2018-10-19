require 'sinatra/base'

class Rps < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    session["p1_name"] = params[:p1_name]
    redirect('/play')
  end

  get '/play' do
    @p1_name = session['p1_name']
  end

end
