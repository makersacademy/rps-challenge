def sign_in
  visit '/'
  click_button 'One Player'
  fill_in :player_1_name, :with => "Alex"
  click_button 'Begin'
end

def choose_scissors
  choose("scissors")
  click_button 'Proceed'
end
