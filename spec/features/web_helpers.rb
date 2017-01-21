def sign_in_and_play
  visit '/'
  fill_in(:player, with: 'Ewan')
  click_button('GET ON IT')
end
