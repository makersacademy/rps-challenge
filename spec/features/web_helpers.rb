def sign_in_as_hannah
  visit '/'
  fill_in :name, with: 'Hannah'
  click_button('Play')
end

def sign_in_and_choose_rock
  visit '/'
  fill_in :name, with: 'Hannah'
  click_button('Play')
  click_button('Rock')
end

def sign_in_and_choose_paper
  visit '/'
  fill_in :name, with: 'Hannah'
  click_button('Play')
  click_button('Paper')
end

def sign_in_and_choose_scissors
  visit '/'
  fill_in :name, with: 'Hannah'
  click_button('Play')
  click_button('Scissors')
end
