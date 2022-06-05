def enter_and_submit_name_single
  visit "/"
  click_button "Single player"
  fill_in :name, with: "Rosie"
  click_button "Submit"
end

def enter_and_submit_names_multi
  visit "/"
  click_button "Multiplayer"
  fill_in :name, with: "Rosie"
  fill_in :name2, with: "Sophie"
  click_button "Submit"
end

def sample_gameplay
  allow($game.player_2).to receive(:weapon).and_return(:scissors)
  click_button "Rock"
end