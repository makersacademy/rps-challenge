require 'sinatra/base'

class RPS < Sinatra::Base
  enable :sessions
  get '/' do
    erb(:index)
  end

  post '/play' do
    session[:p1_name] = params[:p1_name]
    session[:p2_name] = params[:p2_name]
    redirect '/play'
  end

  get '/play' do
    p session
    @p1_name = session[:p1_name]
    @p2_name = session[:p2_name]
    @test = "This is a test string"
    erb(:play)
  end
end
