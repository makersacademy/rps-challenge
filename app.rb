require 'sinatra/base'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/selector' do
    session['player'] = params['player']
    erb(:selector)
  end

  get '/gameplay' do
    session['choice'] = params['choice']
    session['game'] = Game.new(session['choice'])
    erb(:gameplay)
  end

end
