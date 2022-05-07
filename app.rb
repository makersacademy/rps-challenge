require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'

class RockPaperScissors < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get '/' do
    erb :form
  end

  post '/name' do
    p params
    session[:player] = params[:player]
    $player_name = Player.new(params[:player])
    erb :name
    #do we comment out the session when we change the instance variable above to a global?? We did in the challenge and now I'm
    #not so sure we needed to...
    redirect '/play'
  end

  get '/play' do
    @player_name = $player_name.name
    erb :play
  end



#Start the server if this file is executed directly (don't change the line below)
run! if app_file == $0
end
