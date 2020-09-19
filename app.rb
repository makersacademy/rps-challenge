require 'sinatra/base'

class Rock_paper_scissors < Sinatra::Base

  enable :sessions
  
  get '/' do 
    erb(:index)
  end 

  post '/play' do 
    session['name'] = params[:Name]
    redirect '/play'
  end 

  get '/play' do 
    @player = session['name']
    erb(:play)
  end 

end