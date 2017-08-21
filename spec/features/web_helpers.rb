
def single_sign_in_and_play
  visit('/')
  fill_in('name0', with: 'Kate')
  click_button('Play Against Master')
end

def double_sign_in_and_play
  visit('/')
  fill_in('name1', with: 'Eli')
  fill_in('name2', with: 'Kate')
  click_button('Play against each other')
end
