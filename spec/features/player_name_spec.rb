feature 'Enter Player Name' do
  scenario 'Player can enter their name on a form' do
    visit('/')
    fill_in :player_name, with: 'Ginny'
    click_button "Let's Play!"
    expect(page).to have_content "Ginny vs Computer"
  end
end
