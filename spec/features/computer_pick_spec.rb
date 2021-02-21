feature 'computer playing the game' do
  scenario 'computer has rock as their choice' do
    sign_in_and_play
    fill_in :player1pick, with: 'Rock'
    click_button "Submit"
    expect(page).to have_content 'Computer chose'
  end
end
