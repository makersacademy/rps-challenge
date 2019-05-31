require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
  get '/land' do
    'Hello geoff'
  end

  run! if app_file == $0
end
