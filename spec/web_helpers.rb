def register
  visit '/set_name'
  @amount_playing = '1'
  fill_in(:player_one, with: 'Charlie')
  click_button('Register!')
end
