def sign_in_and_play
  visit('/') #visits homepage
  fill_in :p1_name, with: 'Sally'
  click_button ('submit and play')
end
