require 'sinatra/base'

class Rps < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/choose' do
    @name = params[:name]
    session[:name] = @name
    erb(:choose)
  end

  post '/result' do
    @weapon = params[:weapon]
    @name = session[:name]
    @computer_weapon = Game.computer_weapon
    @result = Game.result(@weapon, @computer_weapon)
    erb(:result)
  end

end
