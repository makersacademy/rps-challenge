feature 'a winner is declared' do
  scenario 'one player is declared winner after beating the other' do
    play_multiplayer
    both_sign_in_and_play

    click_button('Rock')
    click_button('Paper')

    expect(page).to have_content('Jaime wins!')
  end
end