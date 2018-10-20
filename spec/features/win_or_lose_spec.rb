feature 'Win or lose' do
  scenario 'player2 wins' do
    sign_in_and_play
    find_button('rock').click
    find_button('paper').click
    expect(page).to have_content "James won!"
  end
  scenario 'player1 wins' do
    sign_in_and_play
    find_button('scissors').click
    find_button('paper').click
    expect(page).to have_content "Caitlin won!"
  end
end
