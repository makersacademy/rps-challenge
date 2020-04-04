require "sinatra/base"
require './lib/weapon'
require './lib/cpu'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:name] = params[:name]
    erb :index
    redirect 'play'
  end

  get '/play' do
    @name = session[:name]
    @weapon = session[:weapon]
    erb :play
  end

  post '/fight' do
    session[:weapon] = Weapon.new([params[:rock], params[:paper], params[:scissors]].join).type
    redirect '/play'
  end

end
