def alan_plays_rock
  visit '/'
  fill_in(:user_name, with: 'Alan')
  click_button('Submit')
  select('Rock', from: 'weapon_type')
  click_button('Play')
end

def alan_plays_paper
  visit '/'
  fill_in(:user_name, with: 'Alan')
  click_button('Submit')
  select('Paper', from: 'weapon_type')
  click_button('Play')
end

def alan_plays_scissors
  visit '/'
  fill_in(:user_name, with: 'Alan')
  click_button('Submit')
  select('Scissors', from: 'weapon_type')
  click_button('Play')
end

def computer_plays_rock
  allow_any_instance_of(Array).to receive(:sample).and_return('rock')
end

def computer_plays_paper
  allow_any_instance_of(Array).to receive(:sample).and_return('paper')
end

def computer_plays_scissors
  allow_any_instance_of(Array).to receive(:sample).and_return('scissors')
end

def alan_plays_rock_computer_plays_rock
  alan_plays_rock
  computer_plays_rock
end
