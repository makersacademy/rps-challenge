require 'sinatra/base'
require 'sinatra'
require 'capybara'
require 'capybara/rspec'
require 'rspec'

class RPS < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/name' do
    @player = params[:player]
    erb(:play)
  end

  run! if app_file == $0
end
