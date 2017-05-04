require 'sinatra/base'
require './lib/rpsls'

class RPSLSWeb < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    session[:name] = params[:name]
    redirect '/play'
  end

  get '/play' do
    @name = session[:name]
    erb :play
  end

  get '/result' do
    @name = session[:name]
    @choice = params['choice'].downcase.to_sym
    @rpsls = RPSLS.new(@choice)
    erb :result
  end
  
  run! if app_file == $0

end
