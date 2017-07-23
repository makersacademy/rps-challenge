def sign_in_and_play
  visit('/')
  fill_in('player_name', with: 'Graham')
  click_button('Play')
end

# def select
#   { click_button 'Rock' || click_button 'Paper' || click_button 'Scissors' }
# end
