require 'sinatra/base'
require 'sinatra'
require 'capybara'
require 'capybara/rspec'
require 'rspec'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  get '/play' do
    @player = session[:player]
    @object = session[:object]
    erb(:play)
  end

  post '/name' do
    #@player = params[:player]
    session[:player] = params[:player]
    redirect '/play'
  end

  post '/play' do
    session[:object] = params[:object]
    redirect '/play'
  end

   run! if app_file == $0
end
