def single_player_login
  visit('/')
  click_button 'Single Player'
  fill_in :player_1_name, with: 'Thousand fingers'
  click_button 'Submit'
end

def play_rock
  single_player_login
  select "Rock", :from => "weapon"
  click_button 'Submit'
end

def play_paper
  single_player_login
  select "Paper", :from => "weapon"
  click_button 'Submit'
end

def play_scissors
  single_player_login
  select "Scissors", :from => "weapon"
  click_button 'Submit'
end
