require 'sinatra/base'
require_relative 'lib/user'
require_relative 'lib/god'

class RPS < Sinatra::Base
attr_reader :name

enable :sesions

  get '/' do
    erb(:index)
  end

  post '/name' do
    $username = params[:username]
    redirect to('/rps')
  end

  get'/rps' do
    @username = $username
    erb(:rps)
  end

  post'/rock' do
    @username = $username
    session[:play] = "Rock"
    @play = session[:play]
    erb(:rps)
  end

  post'/paper' do
    @username = $username
    session[:play] = "Paper"
    @play = session[:play]
    erb(:rps)
  end

  post'/scissors' do
    @username = $username
    session[:play] = "Scissors"
    @play = session[:play]
    erb(:rps)
  end

  post '/god' do
    @username = $username
    @play = session[:play]
    god = God.new
    @choice = god.choice
    erb(:rps)
  end
  run! if app_file == $0
end
