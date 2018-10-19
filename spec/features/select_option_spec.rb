feature 'Selecting an option' do
  scenario 'selects rock and is shown confirmation page' do
    sign_in_and_play
    game_is_rock
    find_button('Rock').click
    expect(page).to have_content "Your move was rock\n The game's move was rock"
    expect(page).to have_content "It's a draw!"
  end
  scenario 'selects paper and is shown confirmation page' do
    sign_in_and_play
    game_is_rock
    find_button('Paper').click
    expect(page).to have_content "Your move was paper\n The game's move was rock"
    expect(page).to have_content "You won!"
  end
  scenario 'selects scissors and is shown confirmation page' do
    sign_in_and_play
    game_is_rock
    find_button('Scissors').click
    expect(page).to have_content "Your move was scissors\n The game's move was rock"
    expect(page).to have_content "You lost!"
  end
end
