feature 'shows winner' do
  scenario 'declares winner between player and computer' do
    sign_in_and_play
    fill_in :player1pick, with: 'Rock'
    click_button "Submit"
    expect(page).to have_content 'won'
  end
end
