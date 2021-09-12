feature 'Ending the game' do
  scenario 'reveals the winner' do
    sign_in_and_play_vs_computer
    click_button 'Rock'
    click_button 'Submit'
    expect(page).to have_content 'You have won!'
  end
end
