def sign_in_and_play
  visit('/')
  fill_in('player_1', with: 'Robert')
  find('input[name="submit"]').click
end
