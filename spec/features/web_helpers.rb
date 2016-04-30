def sign_in
  visit '/'
  click_button 'Start Game'
  fill_in :player_name, :with => "Alex"
  click_button 'Begin'
end

def choose_scissors
  choose("scissors")
  click_button 'Proceed'
end
