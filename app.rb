require 'sinatra/base'

class RPS < Sinatra::Base
  enable :sessions
  set    :session_secret, ENV['SESSION_SECRET']

  get '/' do
    erb :index
  end

  post '/play' do
    @p_name = params[:p_name]
    erb :play
  end

end
