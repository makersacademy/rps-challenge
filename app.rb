require 'sinatra/base'

class RPS < Sinatra::Base
  get '/' do
    erb(:intro_page)
  end

  post '/players' do
    erb(:player_form)
  end

  post '/weapons' do
    erb(:weapons)
  end

  run! if app_file == $0
end
