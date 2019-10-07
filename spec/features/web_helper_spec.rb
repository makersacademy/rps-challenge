def sign_in_and_play
  visit '/'
  fill_in :name, with: 'Chris'
  click_button 'Go!'
end

def sign_in_and_select_rock
  visit '/'
  fill_in :name, with: 'Chris'
  click_button 'Go!'
  select 'Rock', from: 'weapon'
  click_button 'Play!'
end

def sign_in_and_select_paper
  visit '/'
  fill_in :name, with: 'Chris'
  click_button 'Go!'
  select 'Paper', from: 'weapon'
  click_button 'Play!'
end

def sign_in_and_select_scissor
  visit '/'
  fill_in :name, with: 'Chris'
  click_button 'Go!'
  select 'Scissor', from: 'weapon'
  click_button 'Play!'
end
