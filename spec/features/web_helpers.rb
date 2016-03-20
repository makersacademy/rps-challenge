def sign_in_and_play
  visit('/')
  fill_in 'name', with: 'Murilo'
  select "Rock", from: "weapon"
  click_button 'Play!'
end
