require 'sinatra/base'

class Rps < Sinatra::Base

  get '/' do
    'Test!'
  end

  get '/enter-name' do
    erb :name_form
  end

  post '/display-name' do
    @name = params[:name]
    erb :display
  end

end
