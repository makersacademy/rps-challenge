require 'sinatra/base'

class Game < Sinatra::Base

  get '/' do
    erb :entry_form
  end

  post '/play' do
    @name = params[:name]
    erb :options
  end
end
