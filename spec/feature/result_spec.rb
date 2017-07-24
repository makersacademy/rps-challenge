feature 'Testing results page' do
  scenario 'Results page tells you your selection' do
    sign_in_and_play_single
    click_button 'Sissors'
    click_button 'Computers go'
    expect(page).to have_content("Eoin selected ==> Sissors")
  end
end

feature 'Testing the results page on three loops' do
  scenario 'Either you win or the computer wins' do
    sign_in_and_play_single
    one_loop_of_single_player_game
    one_loop_of_single_player_game
    one_loop_of_single_player_game
    click_button 'Sissors'
    click_button 'Computers go'
    expect(page).to have_content("Eoin selected ==> Sissors")
  end
end
