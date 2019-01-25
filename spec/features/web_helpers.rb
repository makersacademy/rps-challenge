def load_and_play
  visit '/'
  fill_in 'name', with: 'Lily'
  click_on 'Play'
end 
