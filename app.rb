require 'sinatra/base'

class RockPaperScissors < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/play' do
    params[:player]
    return 'Choose Rock, Paper or Scissors'
  end

  run! if app_file == $0
end
