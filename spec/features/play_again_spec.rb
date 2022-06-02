feature 'play again' do
  scenario 'press play again to restart game' do
    sign_in_and_play
    fill_in :player_choice, with: 'rock'
    click_button 'Play'
    click_button 'Play again'
    expect(page).to have_content "Joe vs. AI"
    expect(page).not_to have_content "AI wins!"
    expect(page).not_to have_content "Joe wins!"
  end
end