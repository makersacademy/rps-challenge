require 'sinatra/base'
require_relative 'lib/user'
require_relative 'lib/rock_paper_scissors'

class MarketingGames < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/sign_in' do
    User.create(params[:name])
    redirect '/games'
  end

  get '/games' do
    @user = User.instance
    erb(:games)
  end

  get '/games/rock_paper_scissors' do
    @user = User.instance
    erb(:rock_paper_scissors)
  end

  post '/games/rock_paper_scissors_result' do
    RockPaperScissors.create(params[:choice]).play
    redirect('/games/rock_paper_scissors_result')
  end

  get '/games/rock_paper_scissors_result' do
    @rps = RockPaperScissors.instance
    @user = User.instance
    erb(:rock_paper_scissors_result)
  end

  run! if app_file == $0
end
