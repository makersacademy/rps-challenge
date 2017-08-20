require './app/rps_web.rb'

def register_name_submit
  visit '/'
  fill_in('player_name', with: 'Alfonso')
  find_button('Submit').click
end

def register_submit_rock
  register_name_submit
  fill_in('choice', with: 'rock')
  find_button('good luck').click
end
