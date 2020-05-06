def dave_sign_in
  visit '/'
  fill_in('name', with: 'Dave')
  click_button('Start Single-player!')
end

def jim_sign_in
  visit '/'
  fill_in('name', with: 'Jim')
  click_button('Start Single-player!')
end

def dave_jim_sign_in
  visit '/'
  fill_in('player_1_name', with: 'Dave')
  fill_in('player_2_name', with: 'Jim')
  click_button('Start Multi-player!')
end

def pete_steve_sign_in
  visit '/'
  fill_in('player_1_name', with: 'Pete')
  fill_in('player_2_name', with: 'Steve')
  click_button('Start Multi-player!')
end
