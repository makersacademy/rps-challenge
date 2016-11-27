require 'sinatra'
enable :sessions

get '/' do
  erb(:sign_in)
end

post '/play' do
  session[:game] = Game.new(Player.new(params[:player_name]), Machine.new)
  erb(:play)

end
