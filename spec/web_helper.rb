require './app/rps_web.rb'

def register_name_submit
  visit '/'
  fill_in('player_name', with: 'Alfonso')
  find_button('Submit').click
end
