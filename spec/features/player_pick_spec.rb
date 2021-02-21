feature 'playing the game' do
  scenario 'enter rock as your choice' do
    sign_in_and_play
    fill_in :player1pick, with: 'Rock'
    click_button "Submit"
    expect(page).to have_content 'Adam chose Rock.'
  end
end
