require 'sinatra/base'
require_relative 'lib/user'
require_relative 'lib/god'

class RPS < Sinatra::Base
attr_reader :name

enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    session[:username] = params[:username]
    redirect to('/rps')
  end

  get '/rps' do
    @username = session[:username]
    session[:choice] = params[:choice]
    @choice = session[:choice]
    erb(:rps)
  end
  run! if app_file == $0
end
