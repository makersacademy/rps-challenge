require 'sinatra/base'

class RockPaper < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/setup' do
    puts params
    redirect('/play')
  end

  get '/play' do
    erb(:play)
  end

  get '/load' do
    puts params
    erb(:load)
  end

  get '/result' do
    erb(:result)
  end
end
