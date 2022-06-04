feature 'play again' do
  scenario 'press play again to restart game' do
    sign_in_and_play
    player_1_rock_p2_scissors
    click_button 'Play again'
    expect(page).to have_content "Joe vs. Dan"
    expect(page).not_to have_content "Dan wins!"
    expect(page).not_to have_content "Joe wins!"
  end
end