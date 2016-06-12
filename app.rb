require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
  get '/' do
    erb(:index)
  end

  post '/name' do
    Game.set_game(params[:player_name])
    redirect '/choose'
  end

  get '/choose' do
    @player = Game.instance.player
    erb(:choice)
  end

  post '/choice' do
    Game.instance.set_choice(params[:choice])
    redirect '/rps'
  end

  get '/rps' do
    @game= Game.instance
    erb(:rock_paper_scissors)
  end

  run! if app_file == $0
end
