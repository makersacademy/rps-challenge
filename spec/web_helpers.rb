def sign_into_game
  visit('/')
  expect(page).to have_content 'Rock paper scissors'
  expect(page).to have_content 'Star Wars edition!'
  expect(page).to have_content 'Sign in to play'
  fill_in :player1_name, with: 'Born2Win'
  click_button 'Game on!'
end

def play_page_content
  expect(page).to have_content 'Born2Win vs. Computer'
  expect(page).to have_content 'Born2Win: make your choice.'
end

def make_selection_light_saber
  fill_in :selection, with: 'Light Saber'
  click_button 'Test my fate'
end

def make_selection_blaster_cannon
  fill_in :selection, with: 'Blaster Cannon'
  click_button 'Test my fate'
end

def make_selection_thermal_detonator
  fill_in :selection, with: 'Thermal Detonator'
  click_button 'Test my fate'
end
