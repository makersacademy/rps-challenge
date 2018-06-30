feature 'implementation of new weapons' do
  scenario 'choosing either Lizard or Spock should allow to proceed the game' do
    play_multiplayer

    both_sign_in_and_play
    click_button('Lizard')
    expect(page).to have_content('Now, Jaime, choose one:')
    click_button('Spock')
    expect(page).to have_content('Josu wins!')
  end
end
