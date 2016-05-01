def random_string
  (0...8).map { (65 + rand(26)).chr }.join
end

def sign_in_and_play player_name
  visit '/'
  fill_in :player_name, with: player_name
  click_button 'Submit'
end

def choose_and_submit option
  choose option
  click_button 'Submit'
end