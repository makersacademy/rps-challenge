def sign_in_and_play
  visit('/')
  fill_in(:marketeer, with: 'Imogen')
  click_button('Submit')
end
