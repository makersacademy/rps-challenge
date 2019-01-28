require 'sinatra/base'

class App < Sinatra::Base
  enable :sessions
  set :session_secret, "secret af" 

  get '/' do
    erb :index
  end

  post '/register' do
    session.clear
    session[:name] = params[:username]
    redirect '/play'
  end

  get '/play' do
    @player = session[:name]
    @action = session[:action]
    erb :play
  end

  post '/action' do
    session[:action] = params[:action]
    session[:npc_action] = ['Rock', 'Paper', 'Scissor'].sample
    redirect '/winner'
  end

  get '/winner' do
    action = session[:action]
    npc_action = session[:npc_action]

    if action == 'Rock' 
      if npc_action == 'Rock'
        session[:winner] = 'No one'
      elsif npc_action == 'Paper'
        session[:winner] = 'NPC'
      elsif npc_action == 'Scissor'
        session[:winner] = session[:name]
      end
    end

    if action == 'Paper' 
      if npc_action == 'Rock'
        session[:winner] = session[:name]
      elsif npc_action == 'Paper'
        session[:winner] = 'No one'
      elsif npc_action == 'Scissor'
        session[:winner] = 'NPC'
      end
    end

    if action == 'Scissor' 
      if npc_action == 'Rock'
        session[:winner] = 'NPC'
      elsif npc_action == 'Paper'
        session[:winner] = session[:name]
      elsif npc_action == 'Scissor'
        session[:winner] = 'No one'
      end
    end
    @winner = session[:winner]
    erb :winner
  end

  run! if app_file == $0
end
