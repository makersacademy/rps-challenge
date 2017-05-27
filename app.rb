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
    @computer_object = session[:computer_object]
    erb(:play)
  end

  post '/name' do
    session[:player] = params[:player]
    redirect '/play'
  end

  post '/play' do
    session[:object] = params[:object]
    session[:computer_object] = :Scissors
    redirect '/play'
  end

   run! if app_file == $0
end
