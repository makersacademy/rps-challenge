require 'sinatra/base'

class Rps < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/name' do
    $name = params[:name]
    redirect 'play'
  end

  get '/play' do
    @name = $name
    @game = Game.new
    erb(:play)
  end

  post '/choice' do
#    p params[:choice]
    $choice_you = params[:choice]
    redirect 'result'
  end

  get '/result' do
    @choice_you = $choice_you
#    game.test(@choice_you)
    erb(:result)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
