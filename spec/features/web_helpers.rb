def fill_form
  visit('/')
  click_button 'One player'
  fill_in :name, with: 'Mel'
  click_button 'Submit'
end

def fill_form_2_players
  visit('/')
  click_button 'Two players'
  fill_in :player_1, with: 'Mel'
  fill_in :player_2, with: 'Aimee'
  click_button 'Submit'
end
