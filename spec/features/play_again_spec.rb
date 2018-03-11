feature 'play again' do
  scenario 'starting a new game' do
    sign_in_and_play
    click_button('rock')
    click_button('Play again')
    expect(page).to have_content('Enter your name to play')
    find_field('player_name')
  end
end
