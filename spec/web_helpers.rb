def log_in_with_bob
  visit('/')
  fill_in "name", :with => "Bob"
  click_button "Choose weapon"
end

def choose_rock
  choose('weapon', option: 'rock')
  click_button "Fight!"
end
