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

def sign_in_2
  visit '/'
  click_button 'Two Player'
  fill_in :player_1_name, :with => "Alex"
  fill_in :player_2_name, :with => "John"
  click_button 'Begin'
end
