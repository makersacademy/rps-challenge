def sign_in_and_play
  visit '/'
  fill_in :player_name, with: 'Denzel'
  click_button "Submit"
end

def choose_weapon
    fill_in :weapon, with: 'rock'
    click_button 'Submit'
end
