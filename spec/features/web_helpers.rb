def sign_in
  visit '/'
  fill_in :player_name, :with => 'Xin'
  click_button('Submit')
end

def play_rock
  click_button("Ready to play!")
  click_button('rock')
end

def play_scissors
  click_button("Ready to play!")
  click_button('scissors')
end

def play_paper
  click_button("Ready to play!")
  click_button('paper')
end
