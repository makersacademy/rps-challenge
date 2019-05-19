require 'sinatra/base'
require 'capybara'
require 'capybara/rspec'
require 'rspec'

class Rps < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/names' do
    @player_name = params[:player_name]
    erb :play
  end

end
