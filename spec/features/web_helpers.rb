def sign_in_and_play
  visit'/'
  fill_in('name', with: 'MAMA')
  click_button('Start playing')
end
