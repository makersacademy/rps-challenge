def sign_in_and_play
  visit '/'
  fill_in 'player', with: 'Marco'
  click_on 'Play'
end
