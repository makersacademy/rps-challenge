require 'sinatra/base'
require_relative 'lib/user'
require_relative 'lib/user_management'
require_relative 'lib/rock_paper_scissors'

class MarketingGames < Sinatra::Base

  get '/' do
    UserManagement.create if UserManagement.instance.nil?
    erb(:index)
  end

  post '/sign_in' do
    UserManagement.instance.sign_in(User.new(params[:name]))
    redirect '/games'
  end

  get '/games' do
    @user_mgmt = UserManagement.instance
    erb(:games)
  end

  get '/games/rock_paper_scissors' do
    @user = UserManagement.instance.users[-1]
    erb(:rock_paper_scissors)
  end

  post '/games/rock_paper_scissors_result' do
    RockPaperScissors.create(params[:choice]).play
    redirect('/games/rock_paper_scissors_result')
  end

  get '/games/rock_paper_scissors_result' do
    @rps = RockPaperScissors.instance
    @user = UserManagement.instance.users[-1]
    erb(:rock_paper_scissors_result)
  end

  run! if app_file == $0
end
