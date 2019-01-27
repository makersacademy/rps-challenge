equire 'sinatra/base'

class RPSApp < Sinatra::Base
  get '/' do
    'Let\'s play Rock, Paper, Scissors!'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
