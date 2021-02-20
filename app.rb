require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
  enable :sessions # refactoring note - might not need this

  get '/' do
    erb :index
  end

  post '/start_game' do
    'Make your choice: Rock, Paper or Scissors!'
  end

  run! if app_file == $0
end
