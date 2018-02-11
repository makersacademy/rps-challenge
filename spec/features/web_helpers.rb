def sign_in_as_john_and_choose_paper
  visit '/'
  fill_in("player_one[name]", :with => "John")
  select('Paper', :from => 'player_one[rps]')
  click_on "Submit"
end

def sign_in_as_john_choose_paper_and_two_player_mode
  visit '/'
  fill_in("player_one[name]", :with => "John")
  select('Paper', :from => 'player_one[rps]')
  choose('two_player')
  click_on "Submit"
end

def sign_in_as_fred_and_choose_scissors
  fill_in("player_two[name]", :with => "Fred")
  select('Scissors', :from => 'player_two[rps]')
  click_on "Submit"
end
