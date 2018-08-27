require 'sinatra'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    session['player_one'] = params[:player_one]
    p session['player_one']
    redirect '/play'
  end

  post '/weapons' do
    session['weapon'] = params[:weapon]
    redirect '/play'
  end

  get '/play' do
    @name = session['player_one']
    @weapon = session['weapon']

    erb(:play)
  end

  get '/attack' do
    @name = session['player_one']
    erb(:attack)
  end

end
