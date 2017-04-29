require 'sinatra'

class RockPaperScissors < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/info' do
    @name = params[:player]
    @choice = params[:choice]
    erb(:play)
  end
end
