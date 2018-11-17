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
