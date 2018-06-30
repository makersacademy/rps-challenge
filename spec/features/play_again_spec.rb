feature 'player can play again' do
  scenario 'player is redirected to another round' do
    play_computer
    sign_in_and_play

    click_button('Rock')
    click_button('Play again!')

    expect(page).to have_content('Josu, choose one:')
  end
end
