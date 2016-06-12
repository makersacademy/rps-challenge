require 'sinatra/base'

class Rps < Sinatra::Base

  enable :sessions

  get('/') do
    erb(:index)
  end

  get('/name') do
    erb(:name)
  end

  post('/set_name') do
    $player_name = params[:player_1]
    redirect('/select-weapon')
  end

  get('/select-weapon') do
    @player_1 = $player_name
    erb(:select_weapon)
  end

  post('/set_weapon') do
    $weapon = params[:weapon]
    redirect('/fight')
  end

  get('/fight') do
    @player_1 = $player_name
    @weapon = $weapon
    erb(:fight)
  end


  run! if app_file == $0
end
