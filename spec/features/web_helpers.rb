def enter_and_submit_name
  visit "/"
  fill_in :name, with: "Rosie"
  click_button "Submit"
end

def sample_gameplay
  expect($game.player_2).to receive(:weapon_selector).and_return(:scissors)
  allow($game.player_2).to receive(:weapon).and_return(:scissors)
  click_button "Rock"
end