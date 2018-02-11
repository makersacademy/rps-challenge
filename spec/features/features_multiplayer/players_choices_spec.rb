feature 'checks that player chose a valid option' do
  scenario 'chosen option is included in game options' do
    play_multiplayer
    both_sign_in_and_play

    click_button('Rock')
    expect(page).to have_content('Now, Jaime, choose one:')
    click_button('Rock')
  end
end