def sign_in_and_play
  visit '/'
  fill_in('name', :with => 'Chris')
  click_button('Submit')
end

def sign_in_and_play_rps
  visit '/'
  fill_in('name', :with => 'Chris')
  click_button('Submit')
  click_button('Rock Paper Scissors')
end

def sign_in_and_play_rpsls
  visit '/'
  fill_in('name', :with => 'Chris')
  click_button('Submit')
  click_button('Rock Paper Scissors Lizard Spock')
end
