require 'sinatra'

get '/' do
  "<div>
  Welcome to Rock, Paper, Scissors! <br>
  Enter your name
  </div>"
end

get '/game' do
  "<div>
  Hi __NAME__ please choose your WeApOn <br> ROCK PAPER SCISSORS <br> all big buttons which are pictures as well
  </div>"
end
